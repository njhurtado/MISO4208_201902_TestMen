.class Lcom/dropbox/core/v2/sharing/ListFolderMembersArgs$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "ListFolderMembersArgs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/sharing/ListFolderMembersArgs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/sharing/ListFolderMembersArgs;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/sharing/ListFolderMembersArgs$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 229
    new-instance v0, Lcom/dropbox/core/v2/sharing/ListFolderMembersArgs$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/ListFolderMembersArgs$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/sharing/ListFolderMembersArgs$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/ListFolderMembersArgs$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 228
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/sharing/ListFolderMembersArgs;
    .locals 9
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "collapsed"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 252
    const/4 v4, 0x0

    .line 253
    .local v4, "tag":Ljava/lang/String;
    if-nez p2, :cond_0

    .line 254
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/ListFolderMembersArgs$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 255
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/ListFolderMembersArgs$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v4

    .line 257
    :cond_0
    if-nez v4, :cond_7

    .line 258
    const/4 v2, 0x0

    .line 259
    .local v2, "f_sharedFolderId":Ljava/lang/String;
    const/4 v0, 0x0

    .line 260
    .local v0, "f_actions":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/sharing/MemberAction;>;"
    const-wide/16 v6, 0x3e8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 261
    .local v1, "f_limit":Ljava/lang/Long;
    :goto_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v6

    sget-object v7, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v6, v7, :cond_4

    .line 262
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v3

    .line 263
    .local v3, "field":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 264
    const-string v6, "shared_folder_id"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 265
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "f_sharedFolderId":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .restart local v2    # "f_sharedFolderId":Ljava/lang/String;
    goto :goto_0

    .line 267
    :cond_1
    const-string v6, "actions"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 268
    sget-object v6, Lcom/dropbox/core/v2/sharing/MemberAction$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/MemberAction$Serializer;

    invoke-static {v6}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v6

    invoke-static {v6}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "f_actions":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/sharing/MemberAction;>;"
    check-cast v0, Ljava/util/List;

    .restart local v0    # "f_actions":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/sharing/MemberAction;>;"
    goto :goto_0

    .line 270
    :cond_2
    const-string v6, "limit"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 271
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->uInt32()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "f_limit":Ljava/lang/Long;
    check-cast v1, Ljava/lang/Long;

    .restart local v1    # "f_limit":Ljava/lang/Long;
    goto :goto_0

    .line 274
    :cond_3
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/ListFolderMembersArgs$Serializer;->skipValue(Lcom/fasterxml/jackson/core/JsonParser;)V

    goto :goto_0

    .line 277
    .end local v3    # "field":Ljava/lang/String;
    :cond_4
    if-nez v2, :cond_5

    .line 278
    new-instance v6, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v7, "Required field \"shared_folder_id\" missing."

    invoke-direct {v6, p1, v7}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v6

    .line 280
    :cond_5
    new-instance v5, Lcom/dropbox/core/v2/sharing/ListFolderMembersArgs;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-direct {v5, v2, v0, v6, v7}, Lcom/dropbox/core/v2/sharing/ListFolderMembersArgs;-><init>(Ljava/lang/String;Ljava/util/List;J)V

    .line 285
    .local v5, "value":Lcom/dropbox/core/v2/sharing/ListFolderMembersArgs;
    if-nez p2, :cond_6

    .line 286
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/ListFolderMembersArgs$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 288
    :cond_6
    return-object v5

    .line 283
    .end local v0    # "f_actions":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/sharing/MemberAction;>;"
    .end local v1    # "f_limit":Ljava/lang/Long;
    .end local v2    # "f_sharedFolderId":Ljava/lang/String;
    .end local v5    # "value":Lcom/dropbox/core/v2/sharing/ListFolderMembersArgs;
    :cond_7
    new-instance v6, Lcom/fasterxml/jackson/core/JsonParseException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No subtype found that matches tag: \""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, p1, v7}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v6
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
    .line 228
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/sharing/ListFolderMembersArgs$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/sharing/ListFolderMembersArgs;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/sharing/ListFolderMembersArgs;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 4
    .param p1, "value"    # Lcom/dropbox/core/v2/sharing/ListFolderMembersArgs;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p3, "collapse"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 233
    if-nez p3, :cond_0

    .line 234
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 236
    :cond_0
    const-string v0, "shared_folder_id"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 237
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/ListFolderMembersArgs;->sharedFolderId:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 238
    iget-object v0, p1, Lcom/dropbox/core/v2/sharing/ListFolderMembersArgs;->actions:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 239
    const-string v0, "actions"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 240
    sget-object v0, Lcom/dropbox/core/v2/sharing/MemberAction$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/MemberAction$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/ListFolderMembersArgs;->actions:Ljava/util/List;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 242
    :cond_1
    const-string v0, "limit"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 243
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->uInt32()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-wide v2, p1, Lcom/dropbox/core/v2/sharing/ListFolderMembersArgs;->limit:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 244
    if-nez p3, :cond_2

    .line 245
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 247
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
    .line 228
    check-cast p1, Lcom/dropbox/core/v2/sharing/ListFolderMembersArgs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/sharing/ListFolderMembersArgs$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/ListFolderMembersArgs;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    return-void
.end method
