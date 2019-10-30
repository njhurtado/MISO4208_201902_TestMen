.class Lcom/dropbox/core/v2/sharing/AddFileMemberError$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "AddFileMemberError.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/sharing/AddFileMemberError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/sharing/AddFileMemberError;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/sharing/AddFileMemberError$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 302
    new-instance v0, Lcom/dropbox/core/v2/sharing/AddFileMemberError$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/AddFileMemberError$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/sharing/AddFileMemberError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/AddFileMemberError$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 301
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/AddFileMemberError;
    .locals 6
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 342
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v4

    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v4, v5, :cond_0

    .line 343
    const/4 v0, 0x1

    .line 344
    .local v0, "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/AddFileMemberError$Serializer;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v2

    .line 345
    .local v2, "tag":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 352
    :goto_0
    if-nez v2, :cond_1

    .line 353
    new-instance v4, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v5, "Required field missing: .tag"

    invoke-direct {v4, p1, v5}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v4

    .line 348
    .end local v0    # "collapsed":Z
    .end local v2    # "tag":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    .line 349
    .restart local v0    # "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/AddFileMemberError$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 350
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/AddFileMemberError$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "tag":Ljava/lang/String;
    goto :goto_0

    .line 355
    :cond_1
    const-string v4, "user_error"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 356
    const/4 v1, 0x0

    .line 357
    .local v1, "fieldValue":Lcom/dropbox/core/v2/sharing/SharingUserError;
    const-string v4, "user_error"

    invoke-static {v4, p1}, Lcom/dropbox/core/v2/sharing/AddFileMemberError$Serializer;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 358
    sget-object v4, Lcom/dropbox/core/v2/sharing/SharingUserError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharingUserError$Serializer;

    invoke-virtual {v4, p1}, Lcom/dropbox/core/v2/sharing/SharingUserError$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/SharingUserError;

    move-result-object v1

    .line 359
    invoke-static {v1}, Lcom/dropbox/core/v2/sharing/AddFileMemberError;->userError(Lcom/dropbox/core/v2/sharing/SharingUserError;)Lcom/dropbox/core/v2/sharing/AddFileMemberError;

    move-result-object v3

    .line 376
    .end local v1    # "fieldValue":Lcom/dropbox/core/v2/sharing/SharingUserError;
    .local v3, "value":Lcom/dropbox/core/v2/sharing/AddFileMemberError;
    :goto_1
    if-nez v0, :cond_2

    .line 377
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/AddFileMemberError$Serializer;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 378
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/AddFileMemberError$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 380
    :cond_2
    return-object v3

    .line 361
    .end local v3    # "value":Lcom/dropbox/core/v2/sharing/AddFileMemberError;
    :cond_3
    const-string v4, "access_error"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 362
    const/4 v1, 0x0

    .line 363
    .local v1, "fieldValue":Lcom/dropbox/core/v2/sharing/SharingFileAccessError;
    const-string v4, "access_error"

    invoke-static {v4, p1}, Lcom/dropbox/core/v2/sharing/AddFileMemberError$Serializer;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 364
    sget-object v4, Lcom/dropbox/core/v2/sharing/SharingFileAccessError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharingFileAccessError$Serializer;

    invoke-virtual {v4, p1}, Lcom/dropbox/core/v2/sharing/SharingFileAccessError$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    move-result-object v1

    .line 365
    invoke-static {v1}, Lcom/dropbox/core/v2/sharing/AddFileMemberError;->accessError(Lcom/dropbox/core/v2/sharing/SharingFileAccessError;)Lcom/dropbox/core/v2/sharing/AddFileMemberError;

    move-result-object v3

    .line 366
    .restart local v3    # "value":Lcom/dropbox/core/v2/sharing/AddFileMemberError;
    goto :goto_1

    .line 367
    .end local v1    # "fieldValue":Lcom/dropbox/core/v2/sharing/SharingFileAccessError;
    .end local v3    # "value":Lcom/dropbox/core/v2/sharing/AddFileMemberError;
    :cond_4
    const-string v4, "rate_limit"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 368
    sget-object v3, Lcom/dropbox/core/v2/sharing/AddFileMemberError;->RATE_LIMIT:Lcom/dropbox/core/v2/sharing/AddFileMemberError;

    .restart local v3    # "value":Lcom/dropbox/core/v2/sharing/AddFileMemberError;
    goto :goto_1

    .line 370
    .end local v3    # "value":Lcom/dropbox/core/v2/sharing/AddFileMemberError;
    :cond_5
    const-string v4, "invalid_comment"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 371
    sget-object v3, Lcom/dropbox/core/v2/sharing/AddFileMemberError;->INVALID_COMMENT:Lcom/dropbox/core/v2/sharing/AddFileMemberError;

    .restart local v3    # "value":Lcom/dropbox/core/v2/sharing/AddFileMemberError;
    goto :goto_1

    .line 374
    .end local v3    # "value":Lcom/dropbox/core/v2/sharing/AddFileMemberError;
    :cond_6
    sget-object v3, Lcom/dropbox/core/v2/sharing/AddFileMemberError;->OTHER:Lcom/dropbox/core/v2/sharing/AddFileMemberError;

    .restart local v3    # "value":Lcom/dropbox/core/v2/sharing/AddFileMemberError;
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
    .line 301
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/sharing/AddFileMemberError$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/AddFileMemberError;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/sharing/AddFileMemberError;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 2
    .param p1, "value"    # Lcom/dropbox/core/v2/sharing/AddFileMemberError;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 306
    sget-object v0, Lcom/dropbox/core/v2/sharing/AddFileMemberError$1;->$SwitchMap$com$dropbox$core$v2$sharing$AddFileMemberError$Tag:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/sharing/AddFileMemberError;->tag()Lcom/dropbox/core/v2/sharing/AddFileMemberError$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/sharing/AddFileMemberError$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 332
    const-string v0, "other"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    .line 335
    :goto_0
    return-void

    .line 308
    :pswitch_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 309
    const-string v0, "user_error"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/sharing/AddFileMemberError$Serializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 310
    const-string v0, "user_error"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 311
    sget-object v0, Lcom/dropbox/core/v2/sharing/SharingUserError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharingUserError$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/AddFileMemberError;->access$000(Lcom/dropbox/core/v2/sharing/AddFileMemberError;)Lcom/dropbox/core/v2/sharing/SharingUserError;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/sharing/SharingUserError$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/SharingUserError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 312
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 316
    :pswitch_1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 317
    const-string v0, "access_error"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/sharing/AddFileMemberError$Serializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 318
    const-string v0, "access_error"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 319
    sget-object v0, Lcom/dropbox/core/v2/sharing/SharingFileAccessError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharingFileAccessError$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/AddFileMemberError;->access$100(Lcom/dropbox/core/v2/sharing/AddFileMemberError;)Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/sharing/SharingFileAccessError$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/SharingFileAccessError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 320
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 324
    :pswitch_2
    const-string v0, "rate_limit"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 328
    :pswitch_3
    const-string v0, "invalid_comment"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 306
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
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
    .line 301
    check-cast p1, Lcom/dropbox/core/v2/sharing/AddFileMemberError;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/sharing/AddFileMemberError$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/AddFileMemberError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
