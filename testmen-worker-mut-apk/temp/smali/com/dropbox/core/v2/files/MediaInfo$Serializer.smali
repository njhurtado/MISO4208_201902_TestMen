.class Lcom/dropbox/core/v2/files/MediaInfo$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "MediaInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/files/MediaInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/files/MediaInfo;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/files/MediaInfo$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 193
    new-instance v0, Lcom/dropbox/core/v2/files/MediaInfo$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/MediaInfo$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/files/MediaInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/MediaInfo$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 192
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/files/MediaInfo;
    .locals 7
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 221
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v4

    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v4, v5, :cond_0

    .line 222
    const/4 v0, 0x1

    .line 223
    .local v0, "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/files/MediaInfo$Serializer;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v2

    .line 224
    .local v2, "tag":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 231
    :goto_0
    if-nez v2, :cond_1

    .line 232
    new-instance v4, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v5, "Required field missing: .tag"

    invoke-direct {v4, p1, v5}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v4

    .line 227
    .end local v0    # "collapsed":Z
    .end local v2    # "tag":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    .line 228
    .restart local v0    # "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/files/MediaInfo$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 229
    invoke-static {p1}, Lcom/dropbox/core/v2/files/MediaInfo$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "tag":Ljava/lang/String;
    goto :goto_0

    .line 234
    :cond_1
    const-string v4, "pending"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 235
    sget-object v3, Lcom/dropbox/core/v2/files/MediaInfo;->PENDING:Lcom/dropbox/core/v2/files/MediaInfo;

    .line 246
    .local v3, "value":Lcom/dropbox/core/v2/files/MediaInfo;
    :goto_1
    if-nez v0, :cond_2

    .line 247
    invoke-static {p1}, Lcom/dropbox/core/v2/files/MediaInfo$Serializer;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 248
    invoke-static {p1}, Lcom/dropbox/core/v2/files/MediaInfo$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 250
    :cond_2
    return-object v3

    .line 237
    .end local v3    # "value":Lcom/dropbox/core/v2/files/MediaInfo;
    :cond_3
    const-string v4, "metadata"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 238
    const/4 v1, 0x0

    .line 239
    .local v1, "fieldValue":Lcom/dropbox/core/v2/files/MediaMetadata;
    const-string v4, "metadata"

    invoke-static {v4, p1}, Lcom/dropbox/core/v2/files/MediaInfo$Serializer;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 240
    sget-object v4, Lcom/dropbox/core/v2/files/MediaMetadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/MediaMetadata$Serializer;

    invoke-virtual {v4, p1}, Lcom/dropbox/core/v2/files/MediaMetadata$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "fieldValue":Lcom/dropbox/core/v2/files/MediaMetadata;
    check-cast v1, Lcom/dropbox/core/v2/files/MediaMetadata;

    .line 241
    .restart local v1    # "fieldValue":Lcom/dropbox/core/v2/files/MediaMetadata;
    invoke-static {v1}, Lcom/dropbox/core/v2/files/MediaInfo;->metadata(Lcom/dropbox/core/v2/files/MediaMetadata;)Lcom/dropbox/core/v2/files/MediaInfo;

    move-result-object v3

    .line 242
    .restart local v3    # "value":Lcom/dropbox/core/v2/files/MediaInfo;
    goto :goto_1

    .line 244
    .end local v1    # "fieldValue":Lcom/dropbox/core/v2/files/MediaMetadata;
    .end local v3    # "value":Lcom/dropbox/core/v2/files/MediaInfo;
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
    .line 192
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/files/MediaInfo$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/files/MediaInfo;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/files/MediaInfo;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 3
    .param p1, "value"    # Lcom/dropbox/core/v2/files/MediaInfo;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 197
    sget-object v0, Lcom/dropbox/core/v2/files/MediaInfo$1;->$SwitchMap$com$dropbox$core$v2$files$MediaInfo$Tag:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/files/MediaInfo;->tag()Lcom/dropbox/core/v2/files/MediaInfo$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/files/MediaInfo$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 211
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/v2/files/MediaInfo;->tag()Lcom/dropbox/core/v2/files/MediaInfo$Tag;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 199
    :pswitch_0
    const-string v0, "pending"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    .line 214
    :goto_0
    return-void

    .line 203
    :pswitch_1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 204
    const-string v0, "metadata"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/files/MediaInfo$Serializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 205
    const-string v0, "metadata"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 206
    sget-object v0, Lcom/dropbox/core/v2/files/MediaMetadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/MediaMetadata$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/files/MediaInfo;->access$000(Lcom/dropbox/core/v2/files/MediaInfo;)Lcom/dropbox/core/v2/files/MediaMetadata;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/files/MediaMetadata$Serializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 207
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 197
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
    .line 192
    check-cast p1, Lcom/dropbox/core/v2/files/MediaInfo;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/files/MediaInfo$Serializer;->serialize(Lcom/dropbox/core/v2/files/MediaInfo;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
