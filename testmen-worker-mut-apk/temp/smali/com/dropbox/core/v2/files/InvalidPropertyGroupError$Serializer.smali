.class Lcom/dropbox/core/v2/files/InvalidPropertyGroupError$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "InvalidPropertyGroupError.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/files/InvalidPropertyGroupError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/files/InvalidPropertyGroupError;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/files/InvalidPropertyGroupError$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 328
    new-instance v0, Lcom/dropbox/core/v2/files/InvalidPropertyGroupError$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/InvalidPropertyGroupError$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/files/InvalidPropertyGroupError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/InvalidPropertyGroupError$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 327
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/files/InvalidPropertyGroupError;
    .locals 7
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 376
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v4

    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v4, v5, :cond_0

    .line 377
    const/4 v0, 0x1

    .line 378
    .local v0, "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/files/InvalidPropertyGroupError$Serializer;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v2

    .line 379
    .local v2, "tag":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 386
    :goto_0
    if-nez v2, :cond_1

    .line 387
    new-instance v4, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v5, "Required field missing: .tag"

    invoke-direct {v4, p1, v5}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v4

    .line 382
    .end local v0    # "collapsed":Z
    .end local v2    # "tag":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    .line 383
    .restart local v0    # "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/files/InvalidPropertyGroupError$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 384
    invoke-static {p1}, Lcom/dropbox/core/v2/files/InvalidPropertyGroupError$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "tag":Ljava/lang/String;
    goto :goto_0

    .line 389
    :cond_1
    const-string v4, "template_not_found"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 390
    const/4 v1, 0x0

    .line 391
    .local v1, "fieldValue":Ljava/lang/String;
    const-string v4, "template_not_found"

    invoke-static {v4, p1}, Lcom/dropbox/core/v2/files/InvalidPropertyGroupError$Serializer;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 392
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "fieldValue":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 393
    .restart local v1    # "fieldValue":Ljava/lang/String;
    invoke-static {v1}, Lcom/dropbox/core/v2/files/InvalidPropertyGroupError;->templateNotFound(Ljava/lang/String;)Lcom/dropbox/core/v2/files/InvalidPropertyGroupError;

    move-result-object v3

    .line 416
    .end local v1    # "fieldValue":Ljava/lang/String;
    .local v3, "value":Lcom/dropbox/core/v2/files/InvalidPropertyGroupError;
    :goto_1
    if-nez v0, :cond_2

    .line 417
    invoke-static {p1}, Lcom/dropbox/core/v2/files/InvalidPropertyGroupError$Serializer;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 418
    invoke-static {p1}, Lcom/dropbox/core/v2/files/InvalidPropertyGroupError$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 420
    :cond_2
    return-object v3

    .line 395
    .end local v3    # "value":Lcom/dropbox/core/v2/files/InvalidPropertyGroupError;
    :cond_3
    const-string v4, "restricted_content"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 396
    sget-object v3, Lcom/dropbox/core/v2/files/InvalidPropertyGroupError;->RESTRICTED_CONTENT:Lcom/dropbox/core/v2/files/InvalidPropertyGroupError;

    .restart local v3    # "value":Lcom/dropbox/core/v2/files/InvalidPropertyGroupError;
    goto :goto_1

    .line 398
    .end local v3    # "value":Lcom/dropbox/core/v2/files/InvalidPropertyGroupError;
    :cond_4
    const-string v4, "other"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 399
    sget-object v3, Lcom/dropbox/core/v2/files/InvalidPropertyGroupError;->OTHER:Lcom/dropbox/core/v2/files/InvalidPropertyGroupError;

    .restart local v3    # "value":Lcom/dropbox/core/v2/files/InvalidPropertyGroupError;
    goto :goto_1

    .line 401
    .end local v3    # "value":Lcom/dropbox/core/v2/files/InvalidPropertyGroupError;
    :cond_5
    const-string v4, "path"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 402
    const/4 v1, 0x0

    .line 403
    .local v1, "fieldValue":Lcom/dropbox/core/v2/files/LookupError;
    const-string v4, "path"

    invoke-static {v4, p1}, Lcom/dropbox/core/v2/files/InvalidPropertyGroupError$Serializer;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 404
    sget-object v4, Lcom/dropbox/core/v2/files/LookupError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/LookupError$Serializer;

    invoke-virtual {v4, p1}, Lcom/dropbox/core/v2/files/LookupError$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/files/LookupError;

    move-result-object v1

    .line 405
    invoke-static {v1}, Lcom/dropbox/core/v2/files/InvalidPropertyGroupError;->path(Lcom/dropbox/core/v2/files/LookupError;)Lcom/dropbox/core/v2/files/InvalidPropertyGroupError;

    move-result-object v3

    .line 406
    .restart local v3    # "value":Lcom/dropbox/core/v2/files/InvalidPropertyGroupError;
    goto :goto_1

    .line 407
    .end local v1    # "fieldValue":Lcom/dropbox/core/v2/files/LookupError;
    .end local v3    # "value":Lcom/dropbox/core/v2/files/InvalidPropertyGroupError;
    :cond_6
    const-string v4, "property_field_too_large"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 408
    sget-object v3, Lcom/dropbox/core/v2/files/InvalidPropertyGroupError;->PROPERTY_FIELD_TOO_LARGE:Lcom/dropbox/core/v2/files/InvalidPropertyGroupError;

    .restart local v3    # "value":Lcom/dropbox/core/v2/files/InvalidPropertyGroupError;
    goto :goto_1

    .line 410
    .end local v3    # "value":Lcom/dropbox/core/v2/files/InvalidPropertyGroupError;
    :cond_7
    const-string v4, "does_not_fit_template"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 411
    sget-object v3, Lcom/dropbox/core/v2/files/InvalidPropertyGroupError;->DOES_NOT_FIT_TEMPLATE:Lcom/dropbox/core/v2/files/InvalidPropertyGroupError;

    .restart local v3    # "value":Lcom/dropbox/core/v2/files/InvalidPropertyGroupError;
    goto :goto_1

    .line 414
    .end local v3    # "value":Lcom/dropbox/core/v2/files/InvalidPropertyGroupError;
    :cond_8
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
    .line 327
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/files/InvalidPropertyGroupError$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/files/InvalidPropertyGroupError;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/files/InvalidPropertyGroupError;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 3
    .param p1, "value"    # Lcom/dropbox/core/v2/files/InvalidPropertyGroupError;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 332
    sget-object v0, Lcom/dropbox/core/v2/files/InvalidPropertyGroupError$1;->$SwitchMap$com$dropbox$core$v2$files$InvalidPropertyGroupError$Tag:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/files/InvalidPropertyGroupError;->tag()Lcom/dropbox/core/v2/files/InvalidPropertyGroupError$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/files/InvalidPropertyGroupError$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 366
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/v2/files/InvalidPropertyGroupError;->tag()Lcom/dropbox/core/v2/files/InvalidPropertyGroupError$Tag;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 334
    :pswitch_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 335
    const-string v0, "template_not_found"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/files/InvalidPropertyGroupError$Serializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 336
    const-string v0, "template_not_found"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 337
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {p1}, Lcom/dropbox/core/v2/files/InvalidPropertyGroupError;->access$000(Lcom/dropbox/core/v2/files/InvalidPropertyGroupError;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 338
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 369
    :goto_0
    return-void

    .line 342
    :pswitch_1
    const-string v0, "restricted_content"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 346
    :pswitch_2
    const-string v0, "other"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 350
    :pswitch_3
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 351
    const-string v0, "path"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/files/InvalidPropertyGroupError$Serializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 352
    const-string v0, "path"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 353
    sget-object v0, Lcom/dropbox/core/v2/files/LookupError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/LookupError$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/files/InvalidPropertyGroupError;->access$100(Lcom/dropbox/core/v2/files/InvalidPropertyGroupError;)Lcom/dropbox/core/v2/files/LookupError;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/files/LookupError$Serializer;->serialize(Lcom/dropbox/core/v2/files/LookupError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 354
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 358
    :pswitch_4
    const-string v0, "property_field_too_large"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 362
    :pswitch_5
    const-string v0, "does_not_fit_template"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 332
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
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
    .line 327
    check-cast p1, Lcom/dropbox/core/v2/files/InvalidPropertyGroupError;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/files/InvalidPropertyGroupError$Serializer;->serialize(Lcom/dropbox/core/v2/files/InvalidPropertyGroupError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
