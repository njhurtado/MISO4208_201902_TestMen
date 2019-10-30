.class Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "TeamFolderGetInfoItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 237
    new-instance v0, Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 236
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem;
    .locals 7
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 268
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v4

    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v4, v5, :cond_0

    .line 269
    const/4 v0, 0x1

    .line 270
    .local v0, "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem$Serializer;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v2

    .line 271
    .local v2, "tag":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 278
    :goto_0
    if-nez v2, :cond_1

    .line 279
    new-instance v4, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v5, "Required field missing: .tag"

    invoke-direct {v4, p1, v5}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v4

    .line 274
    .end local v0    # "collapsed":Z
    .end local v2    # "tag":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    .line 275
    .restart local v0    # "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 276
    invoke-static {p1}, Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "tag":Ljava/lang/String;
    goto :goto_0

    .line 281
    :cond_1
    const-string v4, "id_not_found"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 282
    const/4 v1, 0x0

    .line 283
    .local v1, "fieldValue":Ljava/lang/String;
    const-string v4, "id_not_found"

    invoke-static {v4, p1}, Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem$Serializer;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 284
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "fieldValue":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 285
    .restart local v1    # "fieldValue":Ljava/lang/String;
    invoke-static {v1}, Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem;->idNotFound(Ljava/lang/String;)Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem;

    move-result-object v3

    .line 295
    .end local v1    # "fieldValue":Ljava/lang/String;
    .local v3, "value":Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem;
    :goto_1
    if-nez v0, :cond_2

    .line 296
    invoke-static {p1}, Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem$Serializer;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 297
    invoke-static {p1}, Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 299
    :cond_2
    return-object v3

    .line 287
    .end local v3    # "value":Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem;
    :cond_3
    const-string v4, "team_folder_metadata"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 288
    const/4 v1, 0x0

    .line 289
    .local v1, "fieldValue":Lcom/dropbox/core/v2/team/TeamFolderMetadata;
    sget-object v4, Lcom/dropbox/core/v2/team/TeamFolderMetadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/TeamFolderMetadata$Serializer;

    const/4 v5, 0x1

    invoke-virtual {v4, p1, v5}, Lcom/dropbox/core/v2/team/TeamFolderMetadata$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/team/TeamFolderMetadata;

    move-result-object v1

    .line 290
    invoke-static {v1}, Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem;->teamFolderMetadata(Lcom/dropbox/core/v2/team/TeamFolderMetadata;)Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem;

    move-result-object v3

    .line 291
    .restart local v3    # "value":Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem;
    goto :goto_1

    .line 293
    .end local v1    # "fieldValue":Lcom/dropbox/core/v2/team/TeamFolderMetadata;
    .end local v3    # "value":Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem;
    :cond_4
    new-instance v4, Lcom/fasterxml/jackson/core/JsonParseException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown tag: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p1, v5}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v4
.end method

.method public bridge synthetic deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 236
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 3
    .param p1, "value"    # Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 241
    sget-object v0, Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem$1;->$SwitchMap$com$dropbox$core$v2$team$TeamFolderGetInfoItem$Tag:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem;->tag()Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 258
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem;->tag()Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem$Tag;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 243
    :pswitch_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 244
    const-string v0, "id_not_found"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem$Serializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 245
    const-string v0, "id_not_found"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 246
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {p1}, Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem;->access$000(Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 247
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 261
    :goto_0
    return-void

    .line 251
    :pswitch_1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 252
    const-string v0, "team_folder_metadata"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem$Serializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 253
    sget-object v0, Lcom/dropbox/core/v2/team/TeamFolderMetadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/TeamFolderMetadata$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem;->access$100(Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem;)Lcom/dropbox/core/v2/team/TeamFolderMetadata;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/team/TeamFolderMetadata$Serializer;->serialize(Lcom/dropbox/core/v2/team/TeamFolderMetadata;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 254
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 241
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 236
    check-cast p1, Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem$Serializer;->serialize(Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
