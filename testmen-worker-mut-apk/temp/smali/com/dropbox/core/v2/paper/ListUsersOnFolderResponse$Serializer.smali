.class Lcom/dropbox/core/v2/paper/ListUsersOnFolderResponse$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "ListUsersOnFolderResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/paper/ListUsersOnFolderResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/paper/ListUsersOnFolderResponse;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/paper/ListUsersOnFolderResponse$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 172
    new-instance v0, Lcom/dropbox/core/v2/paper/ListUsersOnFolderResponse$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/paper/ListUsersOnFolderResponse$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/paper/ListUsersOnFolderResponse$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/ListUsersOnFolderResponse$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 171
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/paper/ListUsersOnFolderResponse;
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
    .line 195
    const/4 v5, 0x0

    .line 196
    .local v5, "tag":Ljava/lang/String;
    if-nez p2, :cond_0

    .line 197
    invoke-static {p1}, Lcom/dropbox/core/v2/paper/ListUsersOnFolderResponse$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 198
    invoke-static {p1}, Lcom/dropbox/core/v2/paper/ListUsersOnFolderResponse$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v5

    .line 200
    :cond_0
    if-nez v5, :cond_b

    .line 201
    const/4 v2, 0x0

    .line 202
    .local v2, "f_invitees":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/sharing/InviteeInfo;>;"
    const/4 v3, 0x0

    .line 203
    .local v3, "f_users":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/sharing/UserInfo;>;"
    const/4 v0, 0x0

    .line 204
    .local v0, "f_cursor":Lcom/dropbox/core/v2/paper/Cursor;
    const/4 v1, 0x0

    .line 205
    .local v1, "f_hasMore":Ljava/lang/Boolean;
    :goto_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v7

    sget-object v8, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v7, v8, :cond_5

    .line 206
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v4

    .line 207
    .local v4, "field":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 208
    const-string v7, "invitees"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 209
    sget-object v7, Lcom/dropbox/core/v2/sharing/InviteeInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/InviteeInfo$Serializer;

    invoke-static {v7}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "f_invitees":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/sharing/InviteeInfo;>;"
    check-cast v2, Ljava/util/List;

    .restart local v2    # "f_invitees":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/sharing/InviteeInfo;>;"
    goto :goto_0

    .line 211
    :cond_1
    const-string v7, "users"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 212
    sget-object v7, Lcom/dropbox/core/v2/sharing/UserInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/UserInfo$Serializer;

    invoke-static {v7}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "f_users":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/sharing/UserInfo;>;"
    check-cast v3, Ljava/util/List;

    .restart local v3    # "f_users":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/sharing/UserInfo;>;"
    goto :goto_0

    .line 214
    :cond_2
    const-string v7, "cursor"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 215
    sget-object v7, Lcom/dropbox/core/v2/paper/Cursor$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/Cursor$Serializer;

    invoke-virtual {v7, p1}, Lcom/dropbox/core/v2/paper/Cursor$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "f_cursor":Lcom/dropbox/core/v2/paper/Cursor;
    check-cast v0, Lcom/dropbox/core/v2/paper/Cursor;

    .restart local v0    # "f_cursor":Lcom/dropbox/core/v2/paper/Cursor;
    goto :goto_0

    .line 217
    :cond_3
    const-string v7, "has_more"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 218
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->boolean_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "f_hasMore":Ljava/lang/Boolean;
    check-cast v1, Ljava/lang/Boolean;

    .restart local v1    # "f_hasMore":Ljava/lang/Boolean;
    goto :goto_0

    .line 221
    :cond_4
    invoke-static {p1}, Lcom/dropbox/core/v2/paper/ListUsersOnFolderResponse$Serializer;->skipValue(Lcom/fasterxml/jackson/core/JsonParser;)V

    goto :goto_0

    .line 224
    .end local v4    # "field":Ljava/lang/String;
    :cond_5
    if-nez v2, :cond_6

    .line 225
    new-instance v7, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v8, "Required field \"invitees\" missing."

    invoke-direct {v7, p1, v8}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v7

    .line 227
    :cond_6
    if-nez v3, :cond_7

    .line 228
    new-instance v7, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v8, "Required field \"users\" missing."

    invoke-direct {v7, p1, v8}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v7

    .line 230
    :cond_7
    if-nez v0, :cond_8

    .line 231
    new-instance v7, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v8, "Required field \"cursor\" missing."

    invoke-direct {v7, p1, v8}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v7

    .line 233
    :cond_8
    if-nez v1, :cond_9

    .line 234
    new-instance v7, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v8, "Required field \"has_more\" missing."

    invoke-direct {v7, p1, v8}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v7

    .line 236
    :cond_9
    new-instance v6, Lcom/dropbox/core/v2/paper/ListUsersOnFolderResponse;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-direct {v6, v2, v3, v0, v7}, Lcom/dropbox/core/v2/paper/ListUsersOnFolderResponse;-><init>(Ljava/util/List;Ljava/util/List;Lcom/dropbox/core/v2/paper/Cursor;Z)V

    .line 241
    .local v6, "value":Lcom/dropbox/core/v2/paper/ListUsersOnFolderResponse;
    if-nez p2, :cond_a

    .line 242
    invoke-static {p1}, Lcom/dropbox/core/v2/paper/ListUsersOnFolderResponse$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 244
    :cond_a
    return-object v6

    .line 239
    .end local v0    # "f_cursor":Lcom/dropbox/core/v2/paper/Cursor;
    .end local v1    # "f_hasMore":Ljava/lang/Boolean;
    .end local v2    # "f_invitees":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/sharing/InviteeInfo;>;"
    .end local v3    # "f_users":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/sharing/UserInfo;>;"
    .end local v6    # "value":Lcom/dropbox/core/v2/paper/ListUsersOnFolderResponse;
    :cond_b
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
    .line 171
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/paper/ListUsersOnFolderResponse$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/paper/ListUsersOnFolderResponse;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/paper/ListUsersOnFolderResponse;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 2
    .param p1, "value"    # Lcom/dropbox/core/v2/paper/ListUsersOnFolderResponse;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p3, "collapse"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 176
    if-nez p3, :cond_0

    .line 177
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 179
    :cond_0
    const-string v0, "invitees"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 180
    sget-object v0, Lcom/dropbox/core/v2/sharing/InviteeInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/InviteeInfo$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/paper/ListUsersOnFolderResponse;->invitees:Ljava/util/List;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 181
    const-string v0, "users"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 182
    sget-object v0, Lcom/dropbox/core/v2/sharing/UserInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/UserInfo$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/paper/ListUsersOnFolderResponse;->users:Ljava/util/List;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 183
    const-string v0, "cursor"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 184
    sget-object v0, Lcom/dropbox/core/v2/paper/Cursor$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/Cursor$Serializer;

    iget-object v1, p1, Lcom/dropbox/core/v2/paper/ListUsersOnFolderResponse;->cursor:Lcom/dropbox/core/v2/paper/Cursor;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/paper/Cursor$Serializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 185
    const-string v0, "has_more"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 186
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->boolean_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-boolean v1, p1, Lcom/dropbox/core/v2/paper/ListUsersOnFolderResponse;->hasMore:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 187
    if-nez p3, :cond_1

    .line 188
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 190
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
    .line 171
    check-cast p1, Lcom/dropbox/core/v2/paper/ListUsersOnFolderResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/paper/ListUsersOnFolderResponse$Serializer;->serialize(Lcom/dropbox/core/v2/paper/ListUsersOnFolderResponse;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    return-void
.end method
