.class Lcom/dropbox/core/v2/sharing/SharedFolderMembers$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "SharedFolderMembers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/sharing/SharedFolderMembers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/sharing/SharedFolderMembers;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/sharing/SharedFolderMembers$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 187
    new-instance v0, Lcom/dropbox/core/v2/sharing/SharedFolderMembers$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/SharedFolderMembers$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/sharing/SharedFolderMembers$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharedFolderMembers$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 186
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/sharing/SharedFolderMembers;
    .locals 10
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "collapsed"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 212
    const/4 v5, 0x0

    .line 213
    .local v5, "tag":Ljava/lang/String;
    if-nez p2, :cond_0

    .line 214
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/SharedFolderMembers$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 215
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/SharedFolderMembers$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v5

    .line 217
    :cond_0
    if-nez v5, :cond_a

    .line 218
    const/4 v3, 0x0

    .line 219
    .local v3, "f_users":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/sharing/UserMembershipInfo;>;"
    const/4 v1, 0x0

    .line 220
    .local v1, "f_groups":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/sharing/GroupMembershipInfo;>;"
    const/4 v2, 0x0

    .line 221
    .local v2, "f_invitees":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo;>;"
    const/4 v0, 0x0

    .line 222
    .local v0, "f_cursor":Ljava/lang/String;
    :goto_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v7

    sget-object v8, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v7, v8, :cond_5

    .line 223
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v4

    .line 224
    .local v4, "field":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 225
    const-string v7, "users"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 226
    sget-object v7, Lcom/dropbox/core/v2/sharing/UserMembershipInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/UserMembershipInfo$Serializer;

    invoke-static {v7}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "f_users":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/sharing/UserMembershipInfo;>;"
    check-cast v3, Ljava/util/List;

    .restart local v3    # "f_users":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/sharing/UserMembershipInfo;>;"
    goto :goto_0

    .line 228
    :cond_1
    const-string v7, "groups"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 229
    sget-object v7, Lcom/dropbox/core/v2/sharing/GroupMembershipInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/GroupMembershipInfo$Serializer;

    invoke-static {v7}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "f_groups":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/sharing/GroupMembershipInfo;>;"
    check-cast v1, Ljava/util/List;

    .restart local v1    # "f_groups":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/sharing/GroupMembershipInfo;>;"
    goto :goto_0

    .line 231
    :cond_2
    const-string v7, "invitees"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 232
    sget-object v7, Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo$Serializer;

    invoke-static {v7}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "f_invitees":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo;>;"
    check-cast v2, Ljava/util/List;

    .restart local v2    # "f_invitees":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo;>;"
    goto :goto_0

    .line 234
    :cond_3
    const-string v7, "cursor"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 235
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v7

    invoke-static {v7}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "f_cursor":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .restart local v0    # "f_cursor":Ljava/lang/String;
    goto :goto_0

    .line 238
    :cond_4
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/SharedFolderMembers$Serializer;->skipValue(Lcom/fasterxml/jackson/core/JsonParser;)V

    goto :goto_0

    .line 241
    .end local v4    # "field":Ljava/lang/String;
    :cond_5
    if-nez v3, :cond_6

    .line 242
    new-instance v7, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v8, "Required field \"users\" missing."

    invoke-direct {v7, p1, v8}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v7

    .line 244
    :cond_6
    if-nez v1, :cond_7

    .line 245
    new-instance v7, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v8, "Required field \"groups\" missing."

    invoke-direct {v7, p1, v8}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v7

    .line 247
    :cond_7
    if-nez v2, :cond_8

    .line 248
    new-instance v7, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v8, "Required field \"invitees\" missing."

    invoke-direct {v7, p1, v8}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v7

    .line 250
    :cond_8
    new-instance v6, Lcom/dropbox/core/v2/sharing/SharedFolderMembers;

    invoke-direct {v6, v3, v1, v2, v0}, Lcom/dropbox/core/v2/sharing/SharedFolderMembers;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    .line 255
    .local v6, "value":Lcom/dropbox/core/v2/sharing/SharedFolderMembers;
    if-nez p2, :cond_9

    .line 256
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/SharedFolderMembers$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 258
    :cond_9
    return-object v6

    .line 253
    .end local v0    # "f_cursor":Ljava/lang/String;
    .end local v1    # "f_groups":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/sharing/GroupMembershipInfo;>;"
    .end local v2    # "f_invitees":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo;>;"
    .end local v3    # "f_users":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/sharing/UserMembershipInfo;>;"
    .end local v6    # "value":Lcom/dropbox/core/v2/sharing/SharedFolderMembers;
    :cond_a
    new-instance v7, Lcom/fasterxml/jackson/core/JsonParseException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No subtype found that matches tag: \""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, p1, v8}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v7
.end method

.method public bridge synthetic deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 186
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/sharing/SharedFolderMembers$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/sharing/SharedFolderMembers;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/sharing/SharedFolderMembers;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 2
    .param p1, "value"    # Lcom/dropbox/core/v2/sharing/SharedFolderMembers;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p3, "collapse"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 191
    if-nez p3, :cond_0

    .line 192
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 194
    :cond_0
    const-string v0, "users"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 195
    sget-object v0, Lcom/dropbox/core/v2/sharing/UserMembershipInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/UserMembershipInfo$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/SharedFolderMembers;->users:Ljava/util/List;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 196
    const-string v0, "groups"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 197
    sget-object v0, Lcom/dropbox/core/v2/sharing/GroupMembershipInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/GroupMembershipInfo$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/SharedFolderMembers;->groups:Ljava/util/List;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 198
    const-string v0, "invitees"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 199
    sget-object v0, Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/SharedFolderMembers;->invitees:Ljava/util/List;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 200
    iget-object v0, p1, Lcom/dropbox/core/v2/sharing/SharedFolderMembers;->cursor:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 201
    const-string v0, "cursor"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 202
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/SharedFolderMembers;->cursor:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 204
    :cond_1
    if-nez p3, :cond_2

    .line 205
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 207
    :cond_2
    return-void
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 186
    check-cast p1, Lcom/dropbox/core/v2/sharing/SharedFolderMembers;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/sharing/SharedFolderMembers$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/SharedFolderMembers;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    return-void
.end method
