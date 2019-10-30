.class Lcom/dropbox/core/v2/files/UploadErrorWithProperties$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "UploadErrorWithProperties.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/files/UploadErrorWithProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/files/UploadErrorWithProperties;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/files/UploadErrorWithProperties$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 255
    new-instance v0, Lcom/dropbox/core/v2/files/UploadErrorWithProperties$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/UploadErrorWithProperties$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/files/UploadErrorWithProperties$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/UploadErrorWithProperties$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 254
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/files/UploadErrorWithProperties;
    .locals 7
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 290
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v4

    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v4, v5, :cond_0

    .line 291
    const/4 v0, 0x1

    .line 292
    .local v0, "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/files/UploadErrorWithProperties$Serializer;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v2

    .line 293
    .local v2, "tag":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 300
    :goto_0
    if-nez v2, :cond_1

    .line 301
    new-instance v4, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v5, "Required field missing: .tag"

    invoke-direct {v4, p1, v5}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v4

    .line 296
    .end local v0    # "collapsed":Z
    .end local v2    # "tag":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    .line 297
    .restart local v0    # "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/files/UploadErrorWithProperties$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 298
    invoke-static {p1}, Lcom/dropbox/core/v2/files/UploadErrorWithProperties$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "tag":Ljava/lang/String;
    goto :goto_0

    .line 303
    :cond_1
    const-string v4, "path"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 304
    const/4 v1, 0x0

    .line 305
    .local v1, "fieldValue":Lcom/dropbox/core/v2/files/UploadWriteFailed;
    sget-object v4, Lcom/dropbox/core/v2/files/UploadWriteFailed$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/UploadWriteFailed$Serializer;

    const/4 v5, 0x1

    invoke-virtual {v4, p1, v5}, Lcom/dropbox/core/v2/files/UploadWriteFailed$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/files/UploadWriteFailed;

    move-result-object v1

    .line 306
    invoke-static {v1}, Lcom/dropbox/core/v2/files/UploadErrorWithProperties;->path(Lcom/dropbox/core/v2/files/UploadWriteFailed;)Lcom/dropbox/core/v2/files/UploadErrorWithProperties;

    move-result-object v3

    .line 320
    .end local v1    # "fieldValue":Lcom/dropbox/core/v2/files/UploadWriteFailed;
    .local v3, "value":Lcom/dropbox/core/v2/files/UploadErrorWithProperties;
    :goto_1
    if-nez v0, :cond_2

    .line 321
    invoke-static {p1}, Lcom/dropbox/core/v2/files/UploadErrorWithProperties$Serializer;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 322
    invoke-static {p1}, Lcom/dropbox/core/v2/files/UploadErrorWithProperties$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 324
    :cond_2
    return-object v3

    .line 308
    .end local v3    # "value":Lcom/dropbox/core/v2/files/UploadErrorWithProperties;
    :cond_3
    const-string v4, "other"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 309
    sget-object v3, Lcom/dropbox/core/v2/files/UploadErrorWithProperties;->OTHER:Lcom/dropbox/core/v2/files/UploadErrorWithProperties;

    .restart local v3    # "value":Lcom/dropbox/core/v2/files/UploadErrorWithProperties;
    goto :goto_1

    .line 311
    .end local v3    # "value":Lcom/dropbox/core/v2/files/UploadErrorWithProperties;
    :cond_4
    const-string v4, "properties_error"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 312
    const/4 v1, 0x0

    .line 313
    .local v1, "fieldValue":Lcom/dropbox/core/v2/files/InvalidPropertyGroupError;
    const-string v4, "properties_error"

    invoke-static {v4, p1}, Lcom/dropbox/core/v2/files/UploadErrorWithProperties$Serializer;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 314
    sget-object v4, Lcom/dropbox/core/v2/files/InvalidPropertyGroupError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/InvalidPropertyGroupError$Serializer;

    invoke-virtual {v4, p1}, Lcom/dropbox/core/v2/files/InvalidPropertyGroupError$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/files/InvalidPropertyGroupError;

    move-result-object v1

    .line 315
    invoke-static {v1}, Lcom/dropbox/core/v2/files/UploadErrorWithProperties;->propertiesError(Lcom/dropbox/core/v2/files/InvalidPropertyGroupError;)Lcom/dropbox/core/v2/files/UploadErrorWithProperties;

    move-result-object v3

    .line 316
    .restart local v3    # "value":Lcom/dropbox/core/v2/files/UploadErrorWithProperties;
    goto :goto_1

    .line 318
    .end local v1    # "fieldValue":Lcom/dropbox/core/v2/files/InvalidPropertyGroupError;
    .end local v3    # "value":Lcom/dropbox/core/v2/files/UploadErrorWithProperties;
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
    .line 254
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/files/UploadErrorWithProperties$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/files/UploadErrorWithProperties;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/files/UploadErrorWithProperties;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 3
    .param p1, "value"    # Lcom/dropbox/core/v2/files/UploadErrorWithProperties;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 259
    sget-object v0, Lcom/dropbox/core/v2/files/UploadErrorWithProperties$1;->$SwitchMap$com$dropbox$core$v2$files$UploadErrorWithProperties$Tag:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/files/UploadErrorWithProperties;->tag()Lcom/dropbox/core/v2/files/UploadErrorWithProperties$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/files/UploadErrorWithProperties$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 280
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/v2/files/UploadErrorWithProperties;->tag()Lcom/dropbox/core/v2/files/UploadErrorWithProperties$Tag;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 261
    :pswitch_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 262
    const-string v0, "path"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/files/UploadErrorWithProperties$Serializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 263
    sget-object v0, Lcom/dropbox/core/v2/files/UploadWriteFailed$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/UploadWriteFailed$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/files/UploadErrorWithProperties;->access$000(Lcom/dropbox/core/v2/files/UploadErrorWithProperties;)Lcom/dropbox/core/v2/files/UploadWriteFailed;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/files/UploadWriteFailed$Serializer;->serialize(Lcom/dropbox/core/v2/files/UploadWriteFailed;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 264
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 283
    :goto_0
    return-void

    .line 268
    :pswitch_1
    const-string v0, "other"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 272
    :pswitch_2
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 273
    const-string v0, "properties_error"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/files/UploadErrorWithProperties$Serializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 274
    const-string v0, "properties_error"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 275
    sget-object v0, Lcom/dropbox/core/v2/files/InvalidPropertyGroupError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/InvalidPropertyGroupError$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/files/UploadErrorWithProperties;->access$100(Lcom/dropbox/core/v2/files/UploadErrorWithProperties;)Lcom/dropbox/core/v2/files/InvalidPropertyGroupError;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/files/InvalidPropertyGroupError$Serializer;->serialize(Lcom/dropbox/core/v2/files/InvalidPropertyGroupError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 276
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 259
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
    .line 254
    check-cast p1, Lcom/dropbox/core/v2/files/UploadErrorWithProperties;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/files/UploadErrorWithProperties$Serializer;->serialize(Lcom/dropbox/core/v2/files/UploadErrorWithProperties;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
