.class Lcom/dropbox/core/v2/files/SaveUrlJobStatus$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "SaveUrlJobStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/files/SaveUrlJobStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/files/SaveUrlJobStatus;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/files/SaveUrlJobStatus$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 245
    new-instance v0, Lcom/dropbox/core/v2/files/SaveUrlJobStatus$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/SaveUrlJobStatus$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/files/SaveUrlJobStatus$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/SaveUrlJobStatus$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 244
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/files/SaveUrlJobStatus;
    .locals 7
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 280
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v4

    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v4, v5, :cond_0

    .line 281
    const/4 v0, 0x1

    .line 282
    .local v0, "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/files/SaveUrlJobStatus$Serializer;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v2

    .line 283
    .local v2, "tag":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 290
    :goto_0
    if-nez v2, :cond_1

    .line 291
    new-instance v4, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v5, "Required field missing: .tag"

    invoke-direct {v4, p1, v5}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v4

    .line 286
    .end local v0    # "collapsed":Z
    .end local v2    # "tag":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    .line 287
    .restart local v0    # "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/files/SaveUrlJobStatus$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 288
    invoke-static {p1}, Lcom/dropbox/core/v2/files/SaveUrlJobStatus$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "tag":Ljava/lang/String;
    goto :goto_0

    .line 293
    :cond_1
    const-string v4, "in_progress"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 294
    sget-object v3, Lcom/dropbox/core/v2/files/SaveUrlJobStatus;->IN_PROGRESS:Lcom/dropbox/core/v2/files/SaveUrlJobStatus;

    .line 310
    .local v3, "value":Lcom/dropbox/core/v2/files/SaveUrlJobStatus;
    :goto_1
    if-nez v0, :cond_2

    .line 311
    invoke-static {p1}, Lcom/dropbox/core/v2/files/SaveUrlJobStatus$Serializer;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 312
    invoke-static {p1}, Lcom/dropbox/core/v2/files/SaveUrlJobStatus$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 314
    :cond_2
    return-object v3

    .line 296
    .end local v3    # "value":Lcom/dropbox/core/v2/files/SaveUrlJobStatus;
    :cond_3
    const-string v4, "complete"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 297
    const/4 v1, 0x0

    .line 298
    .local v1, "fieldValue":Lcom/dropbox/core/v2/files/FileMetadata;
    sget-object v4, Lcom/dropbox/core/v2/files/FileMetadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/FileMetadata$Serializer;

    const/4 v5, 0x1

    invoke-virtual {v4, p1, v5}, Lcom/dropbox/core/v2/files/FileMetadata$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/files/FileMetadata;

    move-result-object v1

    .line 299
    invoke-static {v1}, Lcom/dropbox/core/v2/files/SaveUrlJobStatus;->complete(Lcom/dropbox/core/v2/files/FileMetadata;)Lcom/dropbox/core/v2/files/SaveUrlJobStatus;

    move-result-object v3

    .line 300
    .restart local v3    # "value":Lcom/dropbox/core/v2/files/SaveUrlJobStatus;
    goto :goto_1

    .line 301
    .end local v1    # "fieldValue":Lcom/dropbox/core/v2/files/FileMetadata;
    .end local v3    # "value":Lcom/dropbox/core/v2/files/SaveUrlJobStatus;
    :cond_4
    const-string v4, "failed"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 302
    const/4 v1, 0x0

    .line 303
    .local v1, "fieldValue":Lcom/dropbox/core/v2/files/SaveUrlError;
    const-string v4, "failed"

    invoke-static {v4, p1}, Lcom/dropbox/core/v2/files/SaveUrlJobStatus$Serializer;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 304
    sget-object v4, Lcom/dropbox/core/v2/files/SaveUrlError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/SaveUrlError$Serializer;

    invoke-virtual {v4, p1}, Lcom/dropbox/core/v2/files/SaveUrlError$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/files/SaveUrlError;

    move-result-object v1

    .line 305
    invoke-static {v1}, Lcom/dropbox/core/v2/files/SaveUrlJobStatus;->failed(Lcom/dropbox/core/v2/files/SaveUrlError;)Lcom/dropbox/core/v2/files/SaveUrlJobStatus;

    move-result-object v3

    .line 306
    .restart local v3    # "value":Lcom/dropbox/core/v2/files/SaveUrlJobStatus;
    goto :goto_1

    .line 308
    .end local v1    # "fieldValue":Lcom/dropbox/core/v2/files/SaveUrlError;
    .end local v3    # "value":Lcom/dropbox/core/v2/files/SaveUrlJobStatus;
    :cond_5
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
    .line 244
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/files/SaveUrlJobStatus$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/files/SaveUrlJobStatus;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/files/SaveUrlJobStatus;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 3
    .param p1, "value"    # Lcom/dropbox/core/v2/files/SaveUrlJobStatus;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 249
    sget-object v0, Lcom/dropbox/core/v2/files/SaveUrlJobStatus$1;->$SwitchMap$com$dropbox$core$v2$files$SaveUrlJobStatus$Tag:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/files/SaveUrlJobStatus;->tag()Lcom/dropbox/core/v2/files/SaveUrlJobStatus$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/files/SaveUrlJobStatus$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 270
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/v2/files/SaveUrlJobStatus;->tag()Lcom/dropbox/core/v2/files/SaveUrlJobStatus$Tag;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 251
    :pswitch_0
    const-string v0, "in_progress"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    .line 273
    :goto_0
    return-void

    .line 255
    :pswitch_1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 256
    const-string v0, "complete"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/files/SaveUrlJobStatus$Serializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 257
    sget-object v0, Lcom/dropbox/core/v2/files/FileMetadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/FileMetadata$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/files/SaveUrlJobStatus;->access$000(Lcom/dropbox/core/v2/files/SaveUrlJobStatus;)Lcom/dropbox/core/v2/files/FileMetadata;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/files/FileMetadata$Serializer;->serialize(Lcom/dropbox/core/v2/files/FileMetadata;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 258
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 262
    :pswitch_2
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 263
    const-string v0, "failed"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/files/SaveUrlJobStatus$Serializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 264
    const-string v0, "failed"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 265
    sget-object v0, Lcom/dropbox/core/v2/files/SaveUrlError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/SaveUrlError$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/files/SaveUrlJobStatus;->access$100(Lcom/dropbox/core/v2/files/SaveUrlJobStatus;)Lcom/dropbox/core/v2/files/SaveUrlError;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/files/SaveUrlError$Serializer;->serialize(Lcom/dropbox/core/v2/files/SaveUrlError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 266
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 249
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
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
    .line 244
    check-cast p1, Lcom/dropbox/core/v2/files/SaveUrlJobStatus;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/files/SaveUrlJobStatus$Serializer;->serialize(Lcom/dropbox/core/v2/files/SaveUrlJobStatus;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
