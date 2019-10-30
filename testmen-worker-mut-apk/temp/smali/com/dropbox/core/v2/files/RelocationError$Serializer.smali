.class Lcom/dropbox/core/v2/files/RelocationError$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "RelocationError.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/files/RelocationError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/files/RelocationError;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/files/RelocationError$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 416
    new-instance v0, Lcom/dropbox/core/v2/files/RelocationError$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/RelocationError$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/files/RelocationError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/RelocationError$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 415
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/files/RelocationError;
    .locals 6
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 476
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v4

    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v4, v5, :cond_0

    .line 477
    const/4 v0, 0x1

    .line 478
    .local v0, "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/files/RelocationError$Serializer;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v2

    .line 479
    .local v2, "tag":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 486
    :goto_0
    if-nez v2, :cond_1

    .line 487
    new-instance v4, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v5, "Required field missing: .tag"

    invoke-direct {v4, p1, v5}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v4

    .line 482
    .end local v0    # "collapsed":Z
    .end local v2    # "tag":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    .line 483
    .restart local v0    # "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/files/RelocationError$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 484
    invoke-static {p1}, Lcom/dropbox/core/v2/files/RelocationError$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "tag":Ljava/lang/String;
    goto :goto_0

    .line 489
    :cond_1
    const-string v4, "from_lookup"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 490
    const/4 v1, 0x0

    .line 491
    .local v1, "fieldValue":Lcom/dropbox/core/v2/files/LookupError;
    const-string v4, "from_lookup"

    invoke-static {v4, p1}, Lcom/dropbox/core/v2/files/RelocationError$Serializer;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 492
    sget-object v4, Lcom/dropbox/core/v2/files/LookupError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/LookupError$Serializer;

    invoke-virtual {v4, p1}, Lcom/dropbox/core/v2/files/LookupError$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/files/LookupError;

    move-result-object v1

    .line 493
    invoke-static {v1}, Lcom/dropbox/core/v2/files/RelocationError;->fromLookup(Lcom/dropbox/core/v2/files/LookupError;)Lcom/dropbox/core/v2/files/RelocationError;

    move-result-object v3

    .line 525
    .end local v1    # "fieldValue":Lcom/dropbox/core/v2/files/LookupError;
    .local v3, "value":Lcom/dropbox/core/v2/files/RelocationError;
    :goto_1
    if-nez v0, :cond_2

    .line 526
    invoke-static {p1}, Lcom/dropbox/core/v2/files/RelocationError$Serializer;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 527
    invoke-static {p1}, Lcom/dropbox/core/v2/files/RelocationError$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 529
    :cond_2
    return-object v3

    .line 495
    .end local v3    # "value":Lcom/dropbox/core/v2/files/RelocationError;
    :cond_3
    const-string v4, "from_write"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 496
    const/4 v1, 0x0

    .line 497
    .local v1, "fieldValue":Lcom/dropbox/core/v2/files/WriteError;
    const-string v4, "from_write"

    invoke-static {v4, p1}, Lcom/dropbox/core/v2/files/RelocationError$Serializer;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 498
    sget-object v4, Lcom/dropbox/core/v2/files/WriteError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/WriteError$Serializer;

    invoke-virtual {v4, p1}, Lcom/dropbox/core/v2/files/WriteError$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/files/WriteError;

    move-result-object v1

    .line 499
    invoke-static {v1}, Lcom/dropbox/core/v2/files/RelocationError;->fromWrite(Lcom/dropbox/core/v2/files/WriteError;)Lcom/dropbox/core/v2/files/RelocationError;

    move-result-object v3

    .line 500
    .restart local v3    # "value":Lcom/dropbox/core/v2/files/RelocationError;
    goto :goto_1

    .line 501
    .end local v1    # "fieldValue":Lcom/dropbox/core/v2/files/WriteError;
    .end local v3    # "value":Lcom/dropbox/core/v2/files/RelocationError;
    :cond_4
    const-string v4, "to"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 502
    const/4 v1, 0x0

    .line 503
    .restart local v1    # "fieldValue":Lcom/dropbox/core/v2/files/WriteError;
    const-string v4, "to"

    invoke-static {v4, p1}, Lcom/dropbox/core/v2/files/RelocationError$Serializer;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 504
    sget-object v4, Lcom/dropbox/core/v2/files/WriteError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/WriteError$Serializer;

    invoke-virtual {v4, p1}, Lcom/dropbox/core/v2/files/WriteError$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/files/WriteError;

    move-result-object v1

    .line 505
    invoke-static {v1}, Lcom/dropbox/core/v2/files/RelocationError;->to(Lcom/dropbox/core/v2/files/WriteError;)Lcom/dropbox/core/v2/files/RelocationError;

    move-result-object v3

    .line 506
    .restart local v3    # "value":Lcom/dropbox/core/v2/files/RelocationError;
    goto :goto_1

    .line 507
    .end local v1    # "fieldValue":Lcom/dropbox/core/v2/files/WriteError;
    .end local v3    # "value":Lcom/dropbox/core/v2/files/RelocationError;
    :cond_5
    const-string v4, "cant_copy_shared_folder"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 508
    sget-object v3, Lcom/dropbox/core/v2/files/RelocationError;->CANT_COPY_SHARED_FOLDER:Lcom/dropbox/core/v2/files/RelocationError;

    .restart local v3    # "value":Lcom/dropbox/core/v2/files/RelocationError;
    goto :goto_1

    .line 510
    .end local v3    # "value":Lcom/dropbox/core/v2/files/RelocationError;
    :cond_6
    const-string v4, "cant_nest_shared_folder"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 511
    sget-object v3, Lcom/dropbox/core/v2/files/RelocationError;->CANT_NEST_SHARED_FOLDER:Lcom/dropbox/core/v2/files/RelocationError;

    .restart local v3    # "value":Lcom/dropbox/core/v2/files/RelocationError;
    goto :goto_1

    .line 513
    .end local v3    # "value":Lcom/dropbox/core/v2/files/RelocationError;
    :cond_7
    const-string v4, "cant_move_folder_into_itself"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 514
    sget-object v3, Lcom/dropbox/core/v2/files/RelocationError;->CANT_MOVE_FOLDER_INTO_ITSELF:Lcom/dropbox/core/v2/files/RelocationError;

    .restart local v3    # "value":Lcom/dropbox/core/v2/files/RelocationError;
    goto :goto_1

    .line 516
    .end local v3    # "value":Lcom/dropbox/core/v2/files/RelocationError;
    :cond_8
    const-string v4, "too_many_files"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 517
    sget-object v3, Lcom/dropbox/core/v2/files/RelocationError;->TOO_MANY_FILES:Lcom/dropbox/core/v2/files/RelocationError;

    .restart local v3    # "value":Lcom/dropbox/core/v2/files/RelocationError;
    goto :goto_1

    .line 519
    .end local v3    # "value":Lcom/dropbox/core/v2/files/RelocationError;
    :cond_9
    const-string v4, "duplicated_or_nested_paths"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 520
    sget-object v3, Lcom/dropbox/core/v2/files/RelocationError;->DUPLICATED_OR_NESTED_PATHS:Lcom/dropbox/core/v2/files/RelocationError;

    .restart local v3    # "value":Lcom/dropbox/core/v2/files/RelocationError;
    goto :goto_1

    .line 523
    .end local v3    # "value":Lcom/dropbox/core/v2/files/RelocationError;
    :cond_a
    sget-object v3, Lcom/dropbox/core/v2/files/RelocationError;->OTHER:Lcom/dropbox/core/v2/files/RelocationError;

    .restart local v3    # "value":Lcom/dropbox/core/v2/files/RelocationError;
    goto :goto_1
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
    .line 415
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/files/RelocationError$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/files/RelocationError;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/files/RelocationError;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 2
    .param p1, "value"    # Lcom/dropbox/core/v2/files/RelocationError;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 420
    sget-object v0, Lcom/dropbox/core/v2/files/RelocationError$1;->$SwitchMap$com$dropbox$core$v2$files$RelocationError$Tag:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/files/RelocationError;->tag()Lcom/dropbox/core/v2/files/RelocationError$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/files/RelocationError$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 466
    const-string v0, "other"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    .line 469
    :goto_0
    return-void

    .line 422
    :pswitch_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 423
    const-string v0, "from_lookup"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/files/RelocationError$Serializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 424
    const-string v0, "from_lookup"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 425
    sget-object v0, Lcom/dropbox/core/v2/files/LookupError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/LookupError$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/files/RelocationError;->access$000(Lcom/dropbox/core/v2/files/RelocationError;)Lcom/dropbox/core/v2/files/LookupError;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/files/LookupError$Serializer;->serialize(Lcom/dropbox/core/v2/files/LookupError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 426
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 430
    :pswitch_1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 431
    const-string v0, "from_write"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/files/RelocationError$Serializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 432
    const-string v0, "from_write"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 433
    sget-object v0, Lcom/dropbox/core/v2/files/WriteError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/WriteError$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/files/RelocationError;->access$100(Lcom/dropbox/core/v2/files/RelocationError;)Lcom/dropbox/core/v2/files/WriteError;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/files/WriteError$Serializer;->serialize(Lcom/dropbox/core/v2/files/WriteError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 434
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 438
    :pswitch_2
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 439
    const-string v0, "to"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/files/RelocationError$Serializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 440
    const-string v0, "to"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 441
    sget-object v0, Lcom/dropbox/core/v2/files/WriteError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/WriteError$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/files/RelocationError;->access$200(Lcom/dropbox/core/v2/files/RelocationError;)Lcom/dropbox/core/v2/files/WriteError;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/files/WriteError$Serializer;->serialize(Lcom/dropbox/core/v2/files/WriteError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 442
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 446
    :pswitch_3
    const-string v0, "cant_copy_shared_folder"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 450
    :pswitch_4
    const-string v0, "cant_nest_shared_folder"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 454
    :pswitch_5
    const-string v0, "cant_move_folder_into_itself"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 458
    :pswitch_6
    const-string v0, "too_many_files"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 462
    :pswitch_7
    const-string v0, "duplicated_or_nested_paths"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 420
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
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
    .line 415
    check-cast p1, Lcom/dropbox/core/v2/files/RelocationError;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/files/RelocationError$Serializer;->serialize(Lcom/dropbox/core/v2/files/RelocationError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
