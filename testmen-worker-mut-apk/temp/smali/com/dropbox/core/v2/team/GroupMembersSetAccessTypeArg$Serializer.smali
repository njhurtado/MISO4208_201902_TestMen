.class Lcom/dropbox/core/v2/team/GroupMembersSetAccessTypeArg$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "GroupMembersSetAccessTypeArg.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/team/GroupMembersSetAccessTypeArg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/team/GroupMembersSetAccessTypeArg;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/team/GroupMembersSetAccessTypeArg$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 160
    new-instance v0, Lcom/dropbox/core/v2/team/GroupMembersSetAccessTypeArg$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/GroupMembersSetAccessTypeArg$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/team/GroupMembersSetAccessTypeArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/GroupMembersSetAccessTypeArg$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/team/GroupMembersSetAccessTypeArg;
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
    .line 183
    const/4 v5, 0x0

    .line 184
    .local v5, "tag":Ljava/lang/String;
    if-nez p2, :cond_0

    .line 185
    invoke-static {p1}, Lcom/dropbox/core/v2/team/GroupMembersSetAccessTypeArg$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 186
    invoke-static {p1}, Lcom/dropbox/core/v2/team/GroupMembersSetAccessTypeArg$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v5

    .line 188
    :cond_0
    if-nez v5, :cond_a

    .line 189
    const/4 v1, 0x0

    .line 190
    .local v1, "f_group":Lcom/dropbox/core/v2/team/GroupSelector;
    const/4 v3, 0x0

    .line 191
    .local v3, "f_user":Lcom/dropbox/core/v2/team/UserSelectorArg;
    const/4 v0, 0x0

    .line 192
    .local v0, "f_accessType":Lcom/dropbox/core/v2/team/GroupAccessType;
    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 193
    .local v2, "f_returnMembers":Ljava/lang/Boolean;
    :goto_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v7

    sget-object v8, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v7, v8, :cond_5

    .line 194
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v4

    .line 195
    .local v4, "field":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 196
    const-string v7, "group"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 197
    sget-object v7, Lcom/dropbox/core/v2/team/GroupSelector$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/GroupSelector$Serializer;

    invoke-virtual {v7, p1}, Lcom/dropbox/core/v2/team/GroupSelector$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/team/GroupSelector;

    move-result-object v1

    goto :goto_0

    .line 199
    :cond_1
    const-string v7, "user"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 200
    sget-object v7, Lcom/dropbox/core/v2/team/UserSelectorArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/UserSelectorArg$Serializer;

    invoke-virtual {v7, p1}, Lcom/dropbox/core/v2/team/UserSelectorArg$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/team/UserSelectorArg;

    move-result-object v3

    goto :goto_0

    .line 202
    :cond_2
    const-string v7, "access_type"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 203
    sget-object v7, Lcom/dropbox/core/v2/team/GroupAccessType$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/GroupAccessType$Serializer;

    invoke-virtual {v7, p1}, Lcom/dropbox/core/v2/team/GroupAccessType$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/team/GroupAccessType;

    move-result-object v0

    goto :goto_0

    .line 205
    :cond_3
    const-string v7, "return_members"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 206
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->boolean_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "f_returnMembers":Ljava/lang/Boolean;
    check-cast v2, Ljava/lang/Boolean;

    .restart local v2    # "f_returnMembers":Ljava/lang/Boolean;
    goto :goto_0

    .line 209
    :cond_4
    invoke-static {p1}, Lcom/dropbox/core/v2/team/GroupMembersSetAccessTypeArg$Serializer;->skipValue(Lcom/fasterxml/jackson/core/JsonParser;)V

    goto :goto_0

    .line 212
    .end local v4    # "field":Ljava/lang/String;
    :cond_5
    if-nez v1, :cond_6

    .line 213
    new-instance v7, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v8, "Required field \"group\" missing."

    invoke-direct {v7, p1, v8}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v7

    .line 215
    :cond_6
    if-nez v3, :cond_7

    .line 216
    new-instance v7, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v8, "Required field \"user\" missing."

    invoke-direct {v7, p1, v8}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v7

    .line 218
    :cond_7
    if-nez v0, :cond_8

    .line 219
    new-instance v7, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v8, "Required field \"access_type\" missing."

    invoke-direct {v7, p1, v8}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v7

    .line 221
    :cond_8
    new-instance v6, Lcom/dropbox/core/v2/team/GroupMembersSetAccessTypeArg;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-direct {v6, v1, v3, v0, v7}, Lcom/dropbox/core/v2/team/GroupMembersSetAccessTypeArg;-><init>(Lcom/dropbox/core/v2/team/GroupSelector;Lcom/dropbox/core/v2/team/UserSelectorArg;Lcom/dropbox/core/v2/team/GroupAccessType;Z)V

    .line 226
    .local v6, "value":Lcom/dropbox/core/v2/team/GroupMembersSetAccessTypeArg;
    if-nez p2, :cond_9

    .line 227
    invoke-static {p1}, Lcom/dropbox/core/v2/team/GroupMembersSetAccessTypeArg$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 229
    :cond_9
    return-object v6

    .line 224
    .end local v0    # "f_accessType":Lcom/dropbox/core/v2/team/GroupAccessType;
    .end local v1    # "f_group":Lcom/dropbox/core/v2/team/GroupSelector;
    .end local v2    # "f_returnMembers":Ljava/lang/Boolean;
    .end local v3    # "f_user":Lcom/dropbox/core/v2/team/UserSelectorArg;
    .end local v6    # "value":Lcom/dropbox/core/v2/team/GroupMembersSetAccessTypeArg;
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
    .line 159
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/team/GroupMembersSetAccessTypeArg$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/team/GroupMembersSetAccessTypeArg;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/team/GroupMembersSetAccessTypeArg;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 2
    .param p1, "value"    # Lcom/dropbox/core/v2/team/GroupMembersSetAccessTypeArg;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p3, "collapse"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 164
    if-nez p3, :cond_0

    .line 165
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 167
    :cond_0
    const-string v0, "group"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 168
    sget-object v0, Lcom/dropbox/core/v2/team/GroupSelector$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/GroupSelector$Serializer;

    iget-object v1, p1, Lcom/dropbox/core/v2/team/GroupMembersSetAccessTypeArg;->group:Lcom/dropbox/core/v2/team/GroupSelector;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/team/GroupSelector$Serializer;->serialize(Lcom/dropbox/core/v2/team/GroupSelector;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 169
    const-string v0, "user"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 170
    sget-object v0, Lcom/dropbox/core/v2/team/UserSelectorArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/UserSelectorArg$Serializer;

    iget-object v1, p1, Lcom/dropbox/core/v2/team/GroupMembersSetAccessTypeArg;->user:Lcom/dropbox/core/v2/team/UserSelectorArg;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/team/UserSelectorArg$Serializer;->serialize(Lcom/dropbox/core/v2/team/UserSelectorArg;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 171
    const-string v0, "access_type"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 172
    sget-object v0, Lcom/dropbox/core/v2/team/GroupAccessType$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/GroupAccessType$Serializer;

    iget-object v1, p1, Lcom/dropbox/core/v2/team/GroupMembersSetAccessTypeArg;->accessType:Lcom/dropbox/core/v2/team/GroupAccessType;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/team/GroupAccessType$Serializer;->serialize(Lcom/dropbox/core/v2/team/GroupAccessType;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 173
    const-string v0, "return_members"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 174
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->boolean_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-boolean v1, p1, Lcom/dropbox/core/v2/team/GroupMembersSetAccessTypeArg;->returnMembers:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 175
    if-nez p3, :cond_1

    .line 176
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 178
    :cond_1
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
    .line 159
    check-cast p1, Lcom/dropbox/core/v2/team/GroupMembersSetAccessTypeArg;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/team/GroupMembersSetAccessTypeArg$Serializer;->serialize(Lcom/dropbox/core/v2/team/GroupMembersSetAccessTypeArg;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    return-void
.end method
