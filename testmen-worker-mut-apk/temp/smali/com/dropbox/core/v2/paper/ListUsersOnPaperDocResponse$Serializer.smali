.class Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocResponse$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "ListUsersOnPaperDocResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocResponse;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocResponse$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 192
    new-instance v0, Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocResponse$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocResponse$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocResponse$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocResponse$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 191
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocResponse;
    .locals 11
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "collapsed"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 217
    const/4 v8, 0x0

    .line 218
    .local v8, "tag":Ljava/lang/String;
    if-nez p2, :cond_0

    .line 219
    invoke-static {p1}, Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocResponse$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 220
    invoke-static {p1}, Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocResponse$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v8

    .line 222
    :cond_0
    if-nez v8, :cond_d

    .line 223
    const/4 v1, 0x0

    .line 224
    .local v1, "f_invitees":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/paper/InviteeInfoWithPermissionLevel;>;"
    const/4 v2, 0x0

    .line 225
    .local v2, "f_users":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/paper/UserInfoWithPermissionLevel;>;"
    const/4 v3, 0x0

    .line 226
    .local v3, "f_docOwner":Lcom/dropbox/core/v2/sharing/UserInfo;
    const/4 v4, 0x0

    .line 227
    .local v4, "f_cursor":Lcom/dropbox/core/v2/paper/Cursor;
    const/4 v6, 0x0

    .line 228
    .local v6, "f_hasMore":Ljava/lang/Boolean;
    :goto_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v5

    sget-object v9, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v5, v9, :cond_6

    .line 229
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v7

    .line 230
    .local v7, "field":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 231
    const-string v5, "invitees"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 232
    sget-object v5, Lcom/dropbox/core/v2/paper/InviteeInfoWithPermissionLevel$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/InviteeInfoWithPermissionLevel$Serializer;

    invoke-static {v5}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "f_invitees":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/paper/InviteeInfoWithPermissionLevel;>;"
    check-cast v1, Ljava/util/List;

    .restart local v1    # "f_invitees":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/paper/InviteeInfoWithPermissionLevel;>;"
    goto :goto_0

    .line 234
    :cond_1
    const-string v5, "users"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 235
    sget-object v5, Lcom/dropbox/core/v2/paper/UserInfoWithPermissionLevel$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/UserInfoWithPermissionLevel$Serializer;

    invoke-static {v5}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "f_users":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/paper/UserInfoWithPermissionLevel;>;"
    check-cast v2, Ljava/util/List;

    .restart local v2    # "f_users":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/paper/UserInfoWithPermissionLevel;>;"
    goto :goto_0

    .line 237
    :cond_2
    const-string v5, "doc_owner"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 238
    sget-object v5, Lcom/dropbox/core/v2/sharing/UserInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/UserInfo$Serializer;

    invoke-virtual {v5, p1}, Lcom/dropbox/core/v2/sharing/UserInfo$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "f_docOwner":Lcom/dropbox/core/v2/sharing/UserInfo;
    check-cast v3, Lcom/dropbox/core/v2/sharing/UserInfo;

    .restart local v3    # "f_docOwner":Lcom/dropbox/core/v2/sharing/UserInfo;
    goto :goto_0

    .line 240
    :cond_3
    const-string v5, "cursor"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 241
    sget-object v5, Lcom/dropbox/core/v2/paper/Cursor$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/Cursor$Serializer;

    invoke-virtual {v5, p1}, Lcom/dropbox/core/v2/paper/Cursor$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "f_cursor":Lcom/dropbox/core/v2/paper/Cursor;
    check-cast v4, Lcom/dropbox/core/v2/paper/Cursor;

    .restart local v4    # "f_cursor":Lcom/dropbox/core/v2/paper/Cursor;
    goto :goto_0

    .line 243
    :cond_4
    const-string v5, "has_more"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 244
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->boolean_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "f_hasMore":Ljava/lang/Boolean;
    check-cast v6, Ljava/lang/Boolean;

    .restart local v6    # "f_hasMore":Ljava/lang/Boolean;
    goto :goto_0

    .line 247
    :cond_5
    invoke-static {p1}, Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocResponse$Serializer;->skipValue(Lcom/fasterxml/jackson/core/JsonParser;)V

    goto :goto_0

    .line 250
    .end local v7    # "field":Ljava/lang/String;
    :cond_6
    if-nez v1, :cond_7

    .line 251
    new-instance v5, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v9, "Required field \"invitees\" missing."

    invoke-direct {v5, p1, v9}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v5

    .line 253
    :cond_7
    if-nez v2, :cond_8

    .line 254
    new-instance v5, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v9, "Required field \"users\" missing."

    invoke-direct {v5, p1, v9}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v5

    .line 256
    :cond_8
    if-nez v3, :cond_9

    .line 257
    new-instance v5, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v9, "Required field \"doc_owner\" missing."

    invoke-direct {v5, p1, v9}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v5

    .line 259
    :cond_9
    if-nez v4, :cond_a

    .line 260
    new-instance v5, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v9, "Required field \"cursor\" missing."

    invoke-direct {v5, p1, v9}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v5

    .line 262
    :cond_a
    if-nez v6, :cond_b

    .line 263
    new-instance v5, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v9, "Required field \"has_more\" missing."

    invoke-direct {v5, p1, v9}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v5

    .line 265
    :cond_b
    new-instance v0, Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocResponse;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocResponse;-><init>(Ljava/util/List;Ljava/util/List;Lcom/dropbox/core/v2/sharing/UserInfo;Lcom/dropbox/core/v2/paper/Cursor;Z)V

    .line 270
    .local v0, "value":Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocResponse;
    if-nez p2, :cond_c

    .line 271
    invoke-static {p1}, Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocResponse$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 273
    :cond_c
    return-object v0

    .line 268
    .end local v0    # "value":Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocResponse;
    .end local v1    # "f_invitees":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/paper/InviteeInfoWithPermissionLevel;>;"
    .end local v2    # "f_users":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/paper/UserInfoWithPermissionLevel;>;"
    .end local v3    # "f_docOwner":Lcom/dropbox/core/v2/sharing/UserInfo;
    .end local v4    # "f_cursor":Lcom/dropbox/core/v2/paper/Cursor;
    .end local v6    # "f_hasMore":Ljava/lang/Boolean;
    :cond_d
    new-instance v5, Lcom/fasterxml/jackson/core/JsonParseException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "No subtype found that matches tag: \""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v5, p1, v9}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v5
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
    .line 191
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocResponse$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocResponse;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocResponse;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 2
    .param p1, "value"    # Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocResponse;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p3, "collapse"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 196
    if-nez p3, :cond_0

    .line 197
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 199
    :cond_0
    const-string v0, "invitees"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 200
    sget-object v0, Lcom/dropbox/core/v2/paper/InviteeInfoWithPermissionLevel$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/InviteeInfoWithPermissionLevel$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocResponse;->invitees:Ljava/util/List;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 201
    const-string v0, "users"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 202
    sget-object v0, Lcom/dropbox/core/v2/paper/UserInfoWithPermissionLevel$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/UserInfoWithPermissionLevel$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocResponse;->users:Ljava/util/List;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 203
    const-string v0, "doc_owner"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 204
    sget-object v0, Lcom/dropbox/core/v2/sharing/UserInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/UserInfo$Serializer;

    iget-object v1, p1, Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocResponse;->docOwner:Lcom/dropbox/core/v2/sharing/UserInfo;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/sharing/UserInfo$Serializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 205
    const-string v0, "cursor"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 206
    sget-object v0, Lcom/dropbox/core/v2/paper/Cursor$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/Cursor$Serializer;

    iget-object v1, p1, Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocResponse;->cursor:Lcom/dropbox/core/v2/paper/Cursor;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/paper/Cursor$Serializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 207
    const-string v0, "has_more"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 208
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->boolean_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-boolean v1, p1, Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocResponse;->hasMore:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 209
    if-nez p3, :cond_1

    .line 210
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 212
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
    .line 191
    check-cast p1, Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocResponse$Serializer;->serialize(Lcom/dropbox/core/v2/paper/ListUsersOnPaperDocResponse;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    return-void
.end method
