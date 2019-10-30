.class Lcom/dropbox/core/v2/files/AddPropertiesError$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "AddPropertiesError.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/files/AddPropertiesError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/files/AddPropertiesError;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/files/AddPropertiesError$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 349
    new-instance v0, Lcom/dropbox/core/v2/files/AddPropertiesError$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/AddPropertiesError$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/files/AddPropertiesError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/AddPropertiesError$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 348
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/files/AddPropertiesError;
    .locals 7
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 401
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v4

    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v4, v5, :cond_0

    .line 402
    const/4 v0, 0x1

    .line 403
    .local v0, "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/files/AddPropertiesError$Serializer;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v2

    .line 404
    .local v2, "tag":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 411
    :goto_0
    if-nez v2, :cond_1

    .line 412
    new-instance v4, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v5, "Required field missing: .tag"

    invoke-direct {v4, p1, v5}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v4

    .line 407
    .end local v0    # "collapsed":Z
    .end local v2    # "tag":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    .line 408
    .restart local v0    # "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/files/AddPropertiesError$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 409
    invoke-static {p1}, Lcom/dropbox/core/v2/files/AddPropertiesError$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "tag":Ljava/lang/String;
    goto :goto_0

    .line 414
    :cond_1
    const-string v4, "template_not_found"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 415
    const/4 v1, 0x0

    .line 416
    .local v1, "fieldValue":Ljava/lang/String;
    const-string v4, "template_not_found"

    invoke-static {v4, p1}, Lcom/dropbox/core/v2/files/AddPropertiesError$Serializer;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 417
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "fieldValue":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 418
    .restart local v1    # "fieldValue":Ljava/lang/String;
    invoke-static {v1}, Lcom/dropbox/core/v2/files/AddPropertiesError;->templateNotFound(Ljava/lang/String;)Lcom/dropbox/core/v2/files/AddPropertiesError;

    move-result-object v3

    .line 444
    .end local v1    # "fieldValue":Ljava/lang/String;
    .local v3, "value":Lcom/dropbox/core/v2/files/AddPropertiesError;
    :goto_1
    if-nez v0, :cond_2

    .line 445
    invoke-static {p1}, Lcom/dropbox/core/v2/files/AddPropertiesError$Serializer;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 446
    invoke-static {p1}, Lcom/dropbox/core/v2/files/AddPropertiesError$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 448
    :cond_2
    return-object v3

    .line 420
    .end local v3    # "value":Lcom/dropbox/core/v2/files/AddPropertiesError;
    :cond_3
    const-string v4, "restricted_content"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 421
    sget-object v3, Lcom/dropbox/core/v2/files/AddPropertiesError;->RESTRICTED_CONTENT:Lcom/dropbox/core/v2/files/AddPropertiesError;

    .restart local v3    # "value":Lcom/dropbox/core/v2/files/AddPropertiesError;
    goto :goto_1

    .line 423
    .end local v3    # "value":Lcom/dropbox/core/v2/files/AddPropertiesError;
    :cond_4
    const-string v4, "other"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 424
    sget-object v3, Lcom/dropbox/core/v2/files/AddPropertiesError;->OTHER:Lcom/dropbox/core/v2/files/AddPropertiesError;

    .restart local v3    # "value":Lcom/dropbox/core/v2/files/AddPropertiesError;
    goto :goto_1

    .line 426
    .end local v3    # "value":Lcom/dropbox/core/v2/files/AddPropertiesError;
    :cond_5
    const-string v4, "path"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 427
    const/4 v1, 0x0

    .line 428
    .local v1, "fieldValue":Lcom/dropbox/core/v2/files/LookupError;
    const-string v4, "path"

    invoke-static {v4, p1}, Lcom/dropbox/core/v2/files/AddPropertiesError$Serializer;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 429
    sget-object v4, Lcom/dropbox/core/v2/files/LookupError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/LookupError$Serializer;

    invoke-virtual {v4, p1}, Lcom/dropbox/core/v2/files/LookupError$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/files/LookupError;

    move-result-object v1

    .line 430
    invoke-static {v1}, Lcom/dropbox/core/v2/files/AddPropertiesError;->path(Lcom/dropbox/core/v2/files/LookupError;)Lcom/dropbox/core/v2/files/AddPropertiesError;

    move-result-object v3

    .line 431
    .restart local v3    # "value":Lcom/dropbox/core/v2/files/AddPropertiesError;
    goto :goto_1

    .line 432
    .end local v1    # "fieldValue":Lcom/dropbox/core/v2/files/LookupError;
    .end local v3    # "value":Lcom/dropbox/core/v2/files/AddPropertiesError;
    :cond_6
    const-string v4, "property_field_too_large"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 433
    sget-object v3, Lcom/dropbox/core/v2/files/AddPropertiesError;->PROPERTY_FIELD_TOO_LARGE:Lcom/dropbox/core/v2/files/AddPropertiesError;

    .restart local v3    # "value":Lcom/dropbox/core/v2/files/AddPropertiesError;
    goto :goto_1

    .line 435
    .end local v3    # "value":Lcom/dropbox/core/v2/files/AddPropertiesError;
    :cond_7
    const-string v4, "does_not_fit_template"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 436
    sget-object v3, Lcom/dropbox/core/v2/files/AddPropertiesError;->DOES_NOT_FIT_TEMPLATE:Lcom/dropbox/core/v2/files/AddPropertiesError;

    .restart local v3    # "value":Lcom/dropbox/core/v2/files/AddPropertiesError;
    goto :goto_1

    .line 438
    .end local v3    # "value":Lcom/dropbox/core/v2/files/AddPropertiesError;
    :cond_8
    const-string v4, "property_group_already_exists"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 439
    sget-object v3, Lcom/dropbox/core/v2/files/AddPropertiesError;->PROPERTY_GROUP_ALREADY_EXISTS:Lcom/dropbox/core/v2/files/AddPropertiesError;

    .restart local v3    # "value":Lcom/dropbox/core/v2/files/AddPropertiesError;
    goto :goto_1

    .line 442
    .end local v3    # "value":Lcom/dropbox/core/v2/files/AddPropertiesError;
    :cond_9
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
    .line 348
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/files/AddPropertiesError$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/files/AddPropertiesError;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/files/AddPropertiesError;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 3
    .param p1, "value"    # Lcom/dropbox/core/v2/files/AddPropertiesError;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 353
    sget-object v0, Lcom/dropbox/core/v2/files/AddPropertiesError$1;->$SwitchMap$com$dropbox$core$v2$files$AddPropertiesError$Tag:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/files/AddPropertiesError;->tag()Lcom/dropbox/core/v2/files/AddPropertiesError$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/files/AddPropertiesError$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 391
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/v2/files/AddPropertiesError;->tag()Lcom/dropbox/core/v2/files/AddPropertiesError$Tag;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 355
    :pswitch_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 356
    const-string v0, "template_not_found"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/files/AddPropertiesError$Serializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 357
    const-string v0, "template_not_found"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 358
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {p1}, Lcom/dropbox/core/v2/files/AddPropertiesError;->access$000(Lcom/dropbox/core/v2/files/AddPropertiesError;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 359
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 394
    :goto_0
    return-void

    .line 363
    :pswitch_1
    const-string v0, "restricted_content"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 367
    :pswitch_2
    const-string v0, "other"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 371
    :pswitch_3
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 372
    const-string v0, "path"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/files/AddPropertiesError$Serializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 373
    const-string v0, "path"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 374
    sget-object v0, Lcom/dropbox/core/v2/files/LookupError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/LookupError$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/files/AddPropertiesError;->access$100(Lcom/dropbox/core/v2/files/AddPropertiesError;)Lcom/dropbox/core/v2/files/LookupError;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/files/LookupError$Serializer;->serialize(Lcom/dropbox/core/v2/files/LookupError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 375
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 379
    :pswitch_4
    const-string v0, "property_field_too_large"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 383
    :pswitch_5
    const-string v0, "does_not_fit_template"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 387
    :pswitch_6
    const-string v0, "property_group_already_exists"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 353
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
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
    .line 348
    check-cast p1, Lcom/dropbox/core/v2/files/AddPropertiesError;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/files/AddPropertiesError$Serializer;->serialize(Lcom/dropbox/core/v2/files/AddPropertiesError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
