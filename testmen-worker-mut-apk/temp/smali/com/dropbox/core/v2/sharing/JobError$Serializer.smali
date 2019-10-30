.class Lcom/dropbox/core/v2/sharing/JobError$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "JobError.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/sharing/JobError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/sharing/JobError;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/sharing/JobError$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 359
    new-instance v0, Lcom/dropbox/core/v2/sharing/JobError$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/JobError$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/sharing/JobError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/JobError$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 358
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/JobError;
    .locals 6
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 399
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v4

    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v4, v5, :cond_0

    .line 400
    const/4 v0, 0x1

    .line 401
    .local v0, "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/JobError$Serializer;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v2

    .line 402
    .local v2, "tag":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 409
    :goto_0
    if-nez v2, :cond_1

    .line 410
    new-instance v4, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v5, "Required field missing: .tag"

    invoke-direct {v4, p1, v5}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v4

    .line 405
    .end local v0    # "collapsed":Z
    .end local v2    # "tag":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    .line 406
    .restart local v0    # "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/JobError$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 407
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/JobError$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "tag":Ljava/lang/String;
    goto :goto_0

    .line 412
    :cond_1
    const-string v4, "unshare_folder_error"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 413
    const/4 v1, 0x0

    .line 414
    .local v1, "fieldValue":Lcom/dropbox/core/v2/sharing/UnshareFolderError;
    const-string v4, "unshare_folder_error"

    invoke-static {v4, p1}, Lcom/dropbox/core/v2/sharing/JobError$Serializer;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 415
    sget-object v4, Lcom/dropbox/core/v2/sharing/UnshareFolderError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/UnshareFolderError$Serializer;

    invoke-virtual {v4, p1}, Lcom/dropbox/core/v2/sharing/UnshareFolderError$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/UnshareFolderError;

    move-result-object v1

    .line 416
    invoke-static {v1}, Lcom/dropbox/core/v2/sharing/JobError;->unshareFolderError(Lcom/dropbox/core/v2/sharing/UnshareFolderError;)Lcom/dropbox/core/v2/sharing/JobError;

    move-result-object v3

    .line 433
    .end local v1    # "fieldValue":Lcom/dropbox/core/v2/sharing/UnshareFolderError;
    .local v3, "value":Lcom/dropbox/core/v2/sharing/JobError;
    :goto_1
    if-nez v0, :cond_2

    .line 434
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/JobError$Serializer;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 435
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/JobError$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 437
    :cond_2
    return-object v3

    .line 418
    .end local v3    # "value":Lcom/dropbox/core/v2/sharing/JobError;
    :cond_3
    const-string v4, "remove_folder_member_error"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 419
    const/4 v1, 0x0

    .line 420
    .local v1, "fieldValue":Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;
    const-string v4, "remove_folder_member_error"

    invoke-static {v4, p1}, Lcom/dropbox/core/v2/sharing/JobError$Serializer;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 421
    sget-object v4, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Serializer;

    invoke-virtual {v4, p1}, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;

    move-result-object v1

    .line 422
    invoke-static {v1}, Lcom/dropbox/core/v2/sharing/JobError;->removeFolderMemberError(Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;)Lcom/dropbox/core/v2/sharing/JobError;

    move-result-object v3

    .line 423
    .restart local v3    # "value":Lcom/dropbox/core/v2/sharing/JobError;
    goto :goto_1

    .line 424
    .end local v1    # "fieldValue":Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;
    .end local v3    # "value":Lcom/dropbox/core/v2/sharing/JobError;
    :cond_4
    const-string v4, "relinquish_folder_membership_error"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 425
    const/4 v1, 0x0

    .line 426
    .local v1, "fieldValue":Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;
    const-string v4, "relinquish_folder_membership_error"

    invoke-static {v4, p1}, Lcom/dropbox/core/v2/sharing/JobError$Serializer;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 427
    sget-object v4, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Serializer;

    invoke-virtual {v4, p1}, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;

    move-result-object v1

    .line 428
    invoke-static {v1}, Lcom/dropbox/core/v2/sharing/JobError;->relinquishFolderMembershipError(Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;)Lcom/dropbox/core/v2/sharing/JobError;

    move-result-object v3

    .line 429
    .restart local v3    # "value":Lcom/dropbox/core/v2/sharing/JobError;
    goto :goto_1

    .line 431
    .end local v1    # "fieldValue":Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;
    .end local v3    # "value":Lcom/dropbox/core/v2/sharing/JobError;
    :cond_5
    sget-object v3, Lcom/dropbox/core/v2/sharing/JobError;->OTHER:Lcom/dropbox/core/v2/sharing/JobError;

    .restart local v3    # "value":Lcom/dropbox/core/v2/sharing/JobError;
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
    .line 358
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/sharing/JobError$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/JobError;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/sharing/JobError;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 2
    .param p1, "value"    # Lcom/dropbox/core/v2/sharing/JobError;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 363
    sget-object v0, Lcom/dropbox/core/v2/sharing/JobError$1;->$SwitchMap$com$dropbox$core$v2$sharing$JobError$Tag:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/sharing/JobError;->tag()Lcom/dropbox/core/v2/sharing/JobError$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/sharing/JobError$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 389
    const-string v0, "other"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    .line 392
    :goto_0
    return-void

    .line 365
    :pswitch_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 366
    const-string v0, "unshare_folder_error"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/sharing/JobError$Serializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 367
    const-string v0, "unshare_folder_error"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 368
    sget-object v0, Lcom/dropbox/core/v2/sharing/UnshareFolderError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/UnshareFolderError$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/JobError;->access$000(Lcom/dropbox/core/v2/sharing/JobError;)Lcom/dropbox/core/v2/sharing/UnshareFolderError;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/sharing/UnshareFolderError$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/UnshareFolderError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 369
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 373
    :pswitch_1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 374
    const-string v0, "remove_folder_member_error"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/sharing/JobError$Serializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 375
    const-string v0, "remove_folder_member_error"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 376
    sget-object v0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/JobError;->access$100(Lcom/dropbox/core/v2/sharing/JobError;)Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 377
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 381
    :pswitch_2
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 382
    const-string v0, "relinquish_folder_membership_error"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/sharing/JobError$Serializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 383
    const-string v0, "relinquish_folder_membership_error"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 384
    sget-object v0, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/JobError;->access$200(Lcom/dropbox/core/v2/sharing/JobError;)Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 385
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 363
    nop

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
    .line 358
    check-cast p1, Lcom/dropbox/core/v2/sharing/JobError;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/sharing/JobError$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/JobError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
