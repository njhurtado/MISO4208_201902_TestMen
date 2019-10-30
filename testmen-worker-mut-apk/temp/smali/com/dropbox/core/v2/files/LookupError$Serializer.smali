.class public Lcom/dropbox/core/v2/files/LookupError$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "LookupError.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/files/LookupError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/files/LookupError;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/files/LookupError$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 360
    new-instance v0, Lcom/dropbox/core/v2/files/LookupError$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/LookupError$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/files/LookupError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/LookupError$Serializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 359
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/files/LookupError;
    .locals 6
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 407
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v4

    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v4, v5, :cond_0

    .line 408
    const/4 v0, 0x1

    .line 409
    .local v0, "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/files/LookupError$Serializer;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v2

    .line 410
    .local v2, "tag":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 417
    :goto_0
    if-nez v2, :cond_1

    .line 418
    new-instance v4, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v5, "Required field missing: .tag"

    invoke-direct {v4, p1, v5}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v4

    .line 413
    .end local v0    # "collapsed":Z
    .end local v2    # "tag":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    .line 414
    .restart local v0    # "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/files/LookupError$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 415
    invoke-static {p1}, Lcom/dropbox/core/v2/files/LookupError$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "tag":Ljava/lang/String;
    goto :goto_0

    .line 420
    :cond_1
    const-string v4, "malformed_path"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 421
    const/4 v1, 0x0

    .line 422
    .local v1, "fieldValue":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v4

    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v4, v5, :cond_2

    .line 423
    const-string v4, "malformed_path"

    invoke-static {v4, p1}, Lcom/dropbox/core/v2/files/LookupError$Serializer;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 424
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v4

    invoke-static {v4}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "fieldValue":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 426
    .restart local v1    # "fieldValue":Ljava/lang/String;
    :cond_2
    if-nez v1, :cond_4

    .line 427
    invoke-static {}, Lcom/dropbox/core/v2/files/LookupError;->malformedPath()Lcom/dropbox/core/v2/files/LookupError;

    move-result-object v3

    .line 453
    .end local v1    # "fieldValue":Ljava/lang/String;
    .local v3, "value":Lcom/dropbox/core/v2/files/LookupError;
    :goto_1
    if-nez v0, :cond_3

    .line 454
    invoke-static {p1}, Lcom/dropbox/core/v2/files/LookupError$Serializer;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 455
    invoke-static {p1}, Lcom/dropbox/core/v2/files/LookupError$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 457
    :cond_3
    return-object v3

    .line 430
    .end local v3    # "value":Lcom/dropbox/core/v2/files/LookupError;
    .restart local v1    # "fieldValue":Ljava/lang/String;
    :cond_4
    invoke-static {v1}, Lcom/dropbox/core/v2/files/LookupError;->malformedPath(Ljava/lang/String;)Lcom/dropbox/core/v2/files/LookupError;

    move-result-object v3

    .restart local v3    # "value":Lcom/dropbox/core/v2/files/LookupError;
    goto :goto_1

    .line 433
    .end local v1    # "fieldValue":Ljava/lang/String;
    .end local v3    # "value":Lcom/dropbox/core/v2/files/LookupError;
    :cond_5
    const-string v4, "not_found"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 434
    sget-object v3, Lcom/dropbox/core/v2/files/LookupError;->NOT_FOUND:Lcom/dropbox/core/v2/files/LookupError;

    .restart local v3    # "value":Lcom/dropbox/core/v2/files/LookupError;
    goto :goto_1

    .line 436
    .end local v3    # "value":Lcom/dropbox/core/v2/files/LookupError;
    :cond_6
    const-string v4, "not_file"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 437
    sget-object v3, Lcom/dropbox/core/v2/files/LookupError;->NOT_FILE:Lcom/dropbox/core/v2/files/LookupError;

    .restart local v3    # "value":Lcom/dropbox/core/v2/files/LookupError;
    goto :goto_1

    .line 439
    .end local v3    # "value":Lcom/dropbox/core/v2/files/LookupError;
    :cond_7
    const-string v4, "not_folder"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 440
    sget-object v3, Lcom/dropbox/core/v2/files/LookupError;->NOT_FOLDER:Lcom/dropbox/core/v2/files/LookupError;

    .restart local v3    # "value":Lcom/dropbox/core/v2/files/LookupError;
    goto :goto_1

    .line 442
    .end local v3    # "value":Lcom/dropbox/core/v2/files/LookupError;
    :cond_8
    const-string v4, "restricted_content"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 443
    sget-object v3, Lcom/dropbox/core/v2/files/LookupError;->RESTRICTED_CONTENT:Lcom/dropbox/core/v2/files/LookupError;

    .restart local v3    # "value":Lcom/dropbox/core/v2/files/LookupError;
    goto :goto_1

    .line 445
    .end local v3    # "value":Lcom/dropbox/core/v2/files/LookupError;
    :cond_9
    const-string v4, "invalid_path_root"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 446
    const/4 v1, 0x0

    .line 447
    .local v1, "fieldValue":Lcom/dropbox/core/v2/files/PathRootError;
    sget-object v4, Lcom/dropbox/core/v2/files/PathRootError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/PathRootError$Serializer;

    const/4 v5, 0x1

    invoke-virtual {v4, p1, v5}, Lcom/dropbox/core/v2/files/PathRootError$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/files/PathRootError;

    move-result-object v1

    .line 448
    invoke-static {v1}, Lcom/dropbox/core/v2/files/LookupError;->invalidPathRoot(Lcom/dropbox/core/v2/files/PathRootError;)Lcom/dropbox/core/v2/files/LookupError;

    move-result-object v3

    .line 449
    .restart local v3    # "value":Lcom/dropbox/core/v2/files/LookupError;
    goto :goto_1

    .line 451
    .end local v1    # "fieldValue":Lcom/dropbox/core/v2/files/PathRootError;
    .end local v3    # "value":Lcom/dropbox/core/v2/files/LookupError;
    :cond_a
    sget-object v3, Lcom/dropbox/core/v2/files/LookupError;->OTHER:Lcom/dropbox/core/v2/files/LookupError;

    .restart local v3    # "value":Lcom/dropbox/core/v2/files/LookupError;
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
    .line 359
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/files/LookupError$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/files/LookupError;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/files/LookupError;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 3
    .param p1, "value"    # Lcom/dropbox/core/v2/files/LookupError;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 364
    sget-object v0, Lcom/dropbox/core/v2/files/LookupError$1;->$SwitchMap$com$dropbox$core$v2$files$LookupError$Tag:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/files/LookupError;->tag()Lcom/dropbox/core/v2/files/LookupError$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/files/LookupError$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 397
    const-string v0, "other"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    .line 400
    :goto_0
    return-void

    .line 366
    :pswitch_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 367
    const-string v0, "malformed_path"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/files/LookupError$Serializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 368
    const-string v0, "malformed_path"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 369
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {p1}, Lcom/dropbox/core/v2/files/LookupError;->access$000(Lcom/dropbox/core/v2/files/LookupError;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 370
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 374
    :pswitch_1
    const-string v0, "not_found"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 378
    :pswitch_2
    const-string v0, "not_file"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 382
    :pswitch_3
    const-string v0, "not_folder"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 386
    :pswitch_4
    const-string v0, "restricted_content"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 390
    :pswitch_5
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 391
    const-string v0, "invalid_path_root"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/files/LookupError$Serializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 392
    sget-object v0, Lcom/dropbox/core/v2/files/PathRootError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/PathRootError$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/files/LookupError;->access$100(Lcom/dropbox/core/v2/files/LookupError;)Lcom/dropbox/core/v2/files/PathRootError;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/files/PathRootError$Serializer;->serialize(Lcom/dropbox/core/v2/files/PathRootError;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 393
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 364
    nop

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
    .line 359
    check-cast p1, Lcom/dropbox/core/v2/files/LookupError;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/files/LookupError$Serializer;->serialize(Lcom/dropbox/core/v2/files/LookupError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
