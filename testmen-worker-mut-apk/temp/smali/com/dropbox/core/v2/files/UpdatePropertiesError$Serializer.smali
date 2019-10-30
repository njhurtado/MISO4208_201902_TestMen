.class Lcom/dropbox/core/v2/files/UpdatePropertiesError$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "UpdatePropertiesError.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/files/UpdatePropertiesError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/files/UpdatePropertiesError;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/files/UpdatePropertiesError$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 382
    new-instance v0, Lcom/dropbox/core/v2/files/UpdatePropertiesError$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/UpdatePropertiesError$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/files/UpdatePropertiesError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/UpdatePropertiesError$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 381
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/files/UpdatePropertiesError;
    .locals 7
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 438
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v4

    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v4, v5, :cond_0

    .line 439
    const/4 v0, 0x1

    .line 440
    .local v0, "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/files/UpdatePropertiesError$Serializer;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v2

    .line 441
    .local v2, "tag":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 448
    :goto_0
    if-nez v2, :cond_1

    .line 449
    new-instance v4, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v5, "Required field missing: .tag"

    invoke-direct {v4, p1, v5}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v4

    .line 444
    .end local v0    # "collapsed":Z
    .end local v2    # "tag":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    .line 445
    .restart local v0    # "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/files/UpdatePropertiesError$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 446
    invoke-static {p1}, Lcom/dropbox/core/v2/files/UpdatePropertiesError$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "tag":Ljava/lang/String;
    goto :goto_0

    .line 451
    :cond_1
    const-string v4, "template_not_found"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 452
    const/4 v1, 0x0

    .line 453
    .local v1, "fieldValue":Ljava/lang/String;
    const-string v4, "template_not_found"

    invoke-static {v4, p1}, Lcom/dropbox/core/v2/files/UpdatePropertiesError$Serializer;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 454
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "fieldValue":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 455
    .restart local v1    # "fieldValue":Ljava/lang/String;
    invoke-static {v1}, Lcom/dropbox/core/v2/files/UpdatePropertiesError;->templateNotFound(Ljava/lang/String;)Lcom/dropbox/core/v2/files/UpdatePropertiesError;

    move-result-object v3

    .line 484
    .end local v1    # "fieldValue":Ljava/lang/String;
    .local v3, "value":Lcom/dropbox/core/v2/files/UpdatePropertiesError;
    :goto_1
    if-nez v0, :cond_2

    .line 485
    invoke-static {p1}, Lcom/dropbox/core/v2/files/UpdatePropertiesError$Serializer;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 486
    invoke-static {p1}, Lcom/dropbox/core/v2/files/UpdatePropertiesError$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 488
    :cond_2
    return-object v3

    .line 457
    .end local v3    # "value":Lcom/dropbox/core/v2/files/UpdatePropertiesError;
    :cond_3
    const-string v4, "restricted_content"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 458
    sget-object v3, Lcom/dropbox/core/v2/files/UpdatePropertiesError;->RESTRICTED_CONTENT:Lcom/dropbox/core/v2/files/UpdatePropertiesError;

    .restart local v3    # "value":Lcom/dropbox/core/v2/files/UpdatePropertiesError;
    goto :goto_1

    .line 460
    .end local v3    # "value":Lcom/dropbox/core/v2/files/UpdatePropertiesError;
    :cond_4
    const-string v4, "other"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 461
    sget-object v3, Lcom/dropbox/core/v2/files/UpdatePropertiesError;->OTHER:Lcom/dropbox/core/v2/files/UpdatePropertiesError;

    .restart local v3    # "value":Lcom/dropbox/core/v2/files/UpdatePropertiesError;
    goto :goto_1

    .line 463
    .end local v3    # "value":Lcom/dropbox/core/v2/files/UpdatePropertiesError;
    :cond_5
    const-string v4, "path"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 464
    const/4 v1, 0x0

    .line 465
    .local v1, "fieldValue":Lcom/dropbox/core/v2/files/LookupError;
    const-string v4, "path"

    invoke-static {v4, p1}, Lcom/dropbox/core/v2/files/UpdatePropertiesError$Serializer;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 466
    sget-object v4, Lcom/dropbox/core/v2/files/LookupError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/LookupError$Serializer;

    invoke-virtual {v4, p1}, Lcom/dropbox/core/v2/files/LookupError$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/files/LookupError;

    move-result-object v1

    .line 467
    invoke-static {v1}, Lcom/dropbox/core/v2/files/UpdatePropertiesError;->path(Lcom/dropbox/core/v2/files/LookupError;)Lcom/dropbox/core/v2/files/UpdatePropertiesError;

    move-result-object v3

    .line 468
    .restart local v3    # "value":Lcom/dropbox/core/v2/files/UpdatePropertiesError;
    goto :goto_1

    .line 469
    .end local v1    # "fieldValue":Lcom/dropbox/core/v2/files/LookupError;
    .end local v3    # "value":Lcom/dropbox/core/v2/files/UpdatePropertiesError;
    :cond_6
    const-string v4, "property_field_too_large"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 470
    sget-object v3, Lcom/dropbox/core/v2/files/UpdatePropertiesError;->PROPERTY_FIELD_TOO_LARGE:Lcom/dropbox/core/v2/files/UpdatePropertiesError;

    .restart local v3    # "value":Lcom/dropbox/core/v2/files/UpdatePropertiesError;
    goto :goto_1

    .line 472
    .end local v3    # "value":Lcom/dropbox/core/v2/files/UpdatePropertiesError;
    :cond_7
    const-string v4, "does_not_fit_template"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 473
    sget-object v3, Lcom/dropbox/core/v2/files/UpdatePropertiesError;->DOES_NOT_FIT_TEMPLATE:Lcom/dropbox/core/v2/files/UpdatePropertiesError;

    .restart local v3    # "value":Lcom/dropbox/core/v2/files/UpdatePropertiesError;
    goto :goto_1

    .line 475
    .end local v3    # "value":Lcom/dropbox/core/v2/files/UpdatePropertiesError;
    :cond_8
    const-string v4, "property_group_lookup"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 476
    const/4 v1, 0x0

    .line 477
    .local v1, "fieldValue":Lcom/dropbox/core/v2/files/LookUpPropertiesError;
    const-string v4, "property_group_lookup"

    invoke-static {v4, p1}, Lcom/dropbox/core/v2/files/UpdatePropertiesError$Serializer;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 478
    sget-object v4, Lcom/dropbox/core/v2/files/LookUpPropertiesError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/LookUpPropertiesError$Serializer;

    invoke-virtual {v4, p1}, Lcom/dropbox/core/v2/files/LookUpPropertiesError$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/files/LookUpPropertiesError;

    move-result-object v1

    .line 479
    invoke-static {v1}, Lcom/dropbox/core/v2/files/UpdatePropertiesError;->propertyGroupLookup(Lcom/dropbox/core/v2/files/LookUpPropertiesError;)Lcom/dropbox/core/v2/files/UpdatePropertiesError;

    move-result-object v3

    .line 480
    .restart local v3    # "value":Lcom/dropbox/core/v2/files/UpdatePropertiesError;
    goto :goto_1

    .line 482
    .end local v1    # "fieldValue":Lcom/dropbox/core/v2/files/LookUpPropertiesError;
    .end local v3    # "value":Lcom/dropbox/core/v2/files/UpdatePropertiesError;
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
    .line 381
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/files/UpdatePropertiesError$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/files/UpdatePropertiesError;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/files/UpdatePropertiesError;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 3
    .param p1, "value"    # Lcom/dropbox/core/v2/files/UpdatePropertiesError;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 386
    sget-object v0, Lcom/dropbox/core/v2/files/UpdatePropertiesError$1;->$SwitchMap$com$dropbox$core$v2$files$UpdatePropertiesError$Tag:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/files/UpdatePropertiesError;->tag()Lcom/dropbox/core/v2/files/UpdatePropertiesError$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/files/UpdatePropertiesError$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 428
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/v2/files/UpdatePropertiesError;->tag()Lcom/dropbox/core/v2/files/UpdatePropertiesError$Tag;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 388
    :pswitch_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 389
    const-string v0, "template_not_found"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/files/UpdatePropertiesError$Serializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 390
    const-string v0, "template_not_found"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 391
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {p1}, Lcom/dropbox/core/v2/files/UpdatePropertiesError;->access$000(Lcom/dropbox/core/v2/files/UpdatePropertiesError;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 392
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 431
    :goto_0
    return-void

    .line 396
    :pswitch_1
    const-string v0, "restricted_content"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 400
    :pswitch_2
    const-string v0, "other"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 404
    :pswitch_3
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 405
    const-string v0, "path"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/files/UpdatePropertiesError$Serializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 406
    const-string v0, "path"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 407
    sget-object v0, Lcom/dropbox/core/v2/files/LookupError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/LookupError$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/files/UpdatePropertiesError;->access$100(Lcom/dropbox/core/v2/files/UpdatePropertiesError;)Lcom/dropbox/core/v2/files/LookupError;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/files/LookupError$Serializer;->serialize(Lcom/dropbox/core/v2/files/LookupError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 408
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 412
    :pswitch_4
    const-string v0, "property_field_too_large"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 416
    :pswitch_5
    const-string v0, "does_not_fit_template"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 420
    :pswitch_6
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 421
    const-string v0, "property_group_lookup"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/files/UpdatePropertiesError$Serializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 422
    const-string v0, "property_group_lookup"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 423
    sget-object v0, Lcom/dropbox/core/v2/files/LookUpPropertiesError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/LookUpPropertiesError$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/files/UpdatePropertiesError;->access$200(Lcom/dropbox/core/v2/files/UpdatePropertiesError;)Lcom/dropbox/core/v2/files/LookUpPropertiesError;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/files/LookUpPropertiesError$Serializer;->serialize(Lcom/dropbox/core/v2/files/LookUpPropertiesError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 424
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 386
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
    .line 381
    check-cast p1, Lcom/dropbox/core/v2/files/UpdatePropertiesError;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/files/UpdatePropertiesError$Serializer;->serialize(Lcom/dropbox/core/v2/files/UpdatePropertiesError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
