.class Lcom/dropbox/core/v2/sharing/MountFolderError$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "MountFolderError.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/sharing/MountFolderError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/sharing/MountFolderError;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/sharing/MountFolderError$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 354
    new-instance v0, Lcom/dropbox/core/v2/sharing/MountFolderError$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/MountFolderError$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/sharing/MountFolderError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/MountFolderError$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 353
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/MountFolderError;
    .locals 6
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
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/MountFolderError$Serializer;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

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
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/MountFolderError$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 409
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/MountFolderError$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "tag":Ljava/lang/String;
    goto :goto_0

    .line 414
    :cond_1
    const-string v4, "access_error"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 415
    const/4 v1, 0x0

    .line 416
    .local v1, "fieldValue":Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;
    const-string v4, "access_error"

    invoke-static {v4, p1}, Lcom/dropbox/core/v2/sharing/MountFolderError$Serializer;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 417
    sget-object v4, Lcom/dropbox/core/v2/sharing/SharedFolderAccessError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError$Serializer;

    invoke-virtual {v4, p1}, Lcom/dropbox/core/v2/sharing/SharedFolderAccessError$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    move-result-object v1

    .line 418
    invoke-static {v1}, Lcom/dropbox/core/v2/sharing/MountFolderError;->accessError(Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;)Lcom/dropbox/core/v2/sharing/MountFolderError;

    move-result-object v3

    .line 440
    .end local v1    # "fieldValue":Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;
    .local v3, "value":Lcom/dropbox/core/v2/sharing/MountFolderError;
    :goto_1
    if-nez v0, :cond_2

    .line 441
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/MountFolderError$Serializer;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 442
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/MountFolderError$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 444
    :cond_2
    return-object v3

    .line 420
    .end local v3    # "value":Lcom/dropbox/core/v2/sharing/MountFolderError;
    :cond_3
    const-string v4, "inside_shared_folder"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 421
    sget-object v3, Lcom/dropbox/core/v2/sharing/MountFolderError;->INSIDE_SHARED_FOLDER:Lcom/dropbox/core/v2/sharing/MountFolderError;

    .restart local v3    # "value":Lcom/dropbox/core/v2/sharing/MountFolderError;
    goto :goto_1

    .line 423
    .end local v3    # "value":Lcom/dropbox/core/v2/sharing/MountFolderError;
    :cond_4
    const-string v4, "insufficient_quota"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 424
    const/4 v1, 0x0

    .line 425
    .local v1, "fieldValue":Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts;
    sget-object v4, Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts$Serializer;

    const/4 v5, 0x1

    invoke-virtual {v4, p1, v5}, Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts;

    move-result-object v1

    .line 426
    invoke-static {v1}, Lcom/dropbox/core/v2/sharing/MountFolderError;->insufficientQuota(Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts;)Lcom/dropbox/core/v2/sharing/MountFolderError;

    move-result-object v3

    .line 427
    .restart local v3    # "value":Lcom/dropbox/core/v2/sharing/MountFolderError;
    goto :goto_1

    .line 428
    .end local v1    # "fieldValue":Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts;
    .end local v3    # "value":Lcom/dropbox/core/v2/sharing/MountFolderError;
    :cond_5
    const-string v4, "already_mounted"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 429
    sget-object v3, Lcom/dropbox/core/v2/sharing/MountFolderError;->ALREADY_MOUNTED:Lcom/dropbox/core/v2/sharing/MountFolderError;

    .restart local v3    # "value":Lcom/dropbox/core/v2/sharing/MountFolderError;
    goto :goto_1

    .line 431
    .end local v3    # "value":Lcom/dropbox/core/v2/sharing/MountFolderError;
    :cond_6
    const-string v4, "no_permission"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 432
    sget-object v3, Lcom/dropbox/core/v2/sharing/MountFolderError;->NO_PERMISSION:Lcom/dropbox/core/v2/sharing/MountFolderError;

    .restart local v3    # "value":Lcom/dropbox/core/v2/sharing/MountFolderError;
    goto :goto_1

    .line 434
    .end local v3    # "value":Lcom/dropbox/core/v2/sharing/MountFolderError;
    :cond_7
    const-string v4, "not_mountable"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 435
    sget-object v3, Lcom/dropbox/core/v2/sharing/MountFolderError;->NOT_MOUNTABLE:Lcom/dropbox/core/v2/sharing/MountFolderError;

    .restart local v3    # "value":Lcom/dropbox/core/v2/sharing/MountFolderError;
    goto :goto_1

    .line 438
    .end local v3    # "value":Lcom/dropbox/core/v2/sharing/MountFolderError;
    :cond_8
    sget-object v3, Lcom/dropbox/core/v2/sharing/MountFolderError;->OTHER:Lcom/dropbox/core/v2/sharing/MountFolderError;

    .restart local v3    # "value":Lcom/dropbox/core/v2/sharing/MountFolderError;
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
    .line 353
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/sharing/MountFolderError$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/MountFolderError;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/sharing/MountFolderError;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 3
    .param p1, "value"    # Lcom/dropbox/core/v2/sharing/MountFolderError;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 358
    sget-object v0, Lcom/dropbox/core/v2/sharing/MountFolderError$1;->$SwitchMap$com$dropbox$core$v2$sharing$MountFolderError$Tag:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/sharing/MountFolderError;->tag()Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 391
    const-string v0, "other"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    .line 394
    :goto_0
    return-void

    .line 360
    :pswitch_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 361
    const-string v0, "access_error"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/sharing/MountFolderError$Serializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 362
    const-string v0, "access_error"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 363
    sget-object v0, Lcom/dropbox/core/v2/sharing/SharedFolderAccessError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/MountFolderError;->access$000(Lcom/dropbox/core/v2/sharing/MountFolderError;)Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/sharing/SharedFolderAccessError$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 364
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 368
    :pswitch_1
    const-string v0, "inside_shared_folder"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 372
    :pswitch_2
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 373
    const-string v0, "insufficient_quota"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/sharing/MountFolderError$Serializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 374
    sget-object v0, Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/MountFolderError;->access$100(Lcom/dropbox/core/v2/sharing/MountFolderError;)Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 375
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 379
    :pswitch_3
    const-string v0, "already_mounted"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 383
    :pswitch_4
    const-string v0, "no_permission"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 387
    :pswitch_5
    const-string v0, "not_mountable"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 358
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
    .line 353
    check-cast p1, Lcom/dropbox/core/v2/sharing/MountFolderError;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/sharing/MountFolderError$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/MountFolderError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
