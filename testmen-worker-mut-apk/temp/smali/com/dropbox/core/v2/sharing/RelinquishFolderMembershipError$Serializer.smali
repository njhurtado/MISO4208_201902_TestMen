.class Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "RelinquishFolderMembershipError.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 338
    new-instance v0, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 337
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;
    .locals 6
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 386
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v4

    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v4, v5, :cond_0

    .line 387
    const/4 v0, 0x1

    .line 388
    .local v0, "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Serializer;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v2

    .line 389
    .local v2, "tag":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 396
    :goto_0
    if-nez v2, :cond_1

    .line 397
    new-instance v4, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v5, "Required field missing: .tag"

    invoke-direct {v4, p1, v5}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v4

    .line 392
    .end local v0    # "collapsed":Z
    .end local v2    # "tag":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    .line 393
    .restart local v0    # "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 394
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "tag":Ljava/lang/String;
    goto :goto_0

    .line 399
    :cond_1
    const-string v4, "access_error"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 400
    const/4 v1, 0x0

    .line 401
    .local v1, "fieldValue":Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;
    const-string v4, "access_error"

    invoke-static {v4, p1}, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Serializer;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 402
    sget-object v4, Lcom/dropbox/core/v2/sharing/SharedFolderAccessError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError$Serializer;

    invoke-virtual {v4, p1}, Lcom/dropbox/core/v2/sharing/SharedFolderAccessError$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    move-result-object v1

    .line 403
    invoke-static {v1}, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;->accessError(Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;)Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;

    move-result-object v3

    .line 426
    .end local v1    # "fieldValue":Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;
    .local v3, "value":Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;
    :goto_1
    if-nez v0, :cond_2

    .line 427
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Serializer;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 428
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 430
    :cond_2
    return-object v3

    .line 405
    .end local v3    # "value":Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;
    :cond_3
    const-string v4, "folder_owner"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 406
    sget-object v3, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;->FOLDER_OWNER:Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;

    .restart local v3    # "value":Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;
    goto :goto_1

    .line 408
    .end local v3    # "value":Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;
    :cond_4
    const-string v4, "mounted"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 409
    sget-object v3, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;->MOUNTED:Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;

    .restart local v3    # "value":Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;
    goto :goto_1

    .line 411
    .end local v3    # "value":Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;
    :cond_5
    const-string v4, "group_access"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 412
    sget-object v3, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;->GROUP_ACCESS:Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;

    .restart local v3    # "value":Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;
    goto :goto_1

    .line 414
    .end local v3    # "value":Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;
    :cond_6
    const-string v4, "team_folder"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 415
    sget-object v3, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;->TEAM_FOLDER:Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;

    .restart local v3    # "value":Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;
    goto :goto_1

    .line 417
    .end local v3    # "value":Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;
    :cond_7
    const-string v4, "no_permission"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 418
    sget-object v3, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;->NO_PERMISSION:Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;

    .restart local v3    # "value":Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;
    goto :goto_1

    .line 420
    .end local v3    # "value":Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;
    :cond_8
    const-string v4, "no_explicit_access"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 421
    sget-object v3, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;->NO_EXPLICIT_ACCESS:Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;

    .restart local v3    # "value":Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;
    goto :goto_1

    .line 424
    .end local v3    # "value":Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;
    :cond_9
    sget-object v3, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;->OTHER:Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;

    .restart local v3    # "value":Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;
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
    .line 337
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 2
    .param p1, "value"    # Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 342
    sget-object v0, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$1;->$SwitchMap$com$dropbox$core$v2$sharing$RelinquishFolderMembershipError$Tag:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;->tag()Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 376
    const-string v0, "other"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    .line 379
    :goto_0
    return-void

    .line 344
    :pswitch_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 345
    const-string v0, "access_error"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Serializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 346
    const-string v0, "access_error"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 347
    sget-object v0, Lcom/dropbox/core/v2/sharing/SharedFolderAccessError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;->access$000(Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;)Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/sharing/SharedFolderAccessError$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 348
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 352
    :pswitch_1
    const-string v0, "folder_owner"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 356
    :pswitch_2
    const-string v0, "mounted"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 360
    :pswitch_3
    const-string v0, "group_access"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 364
    :pswitch_4
    const-string v0, "team_folder"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 368
    :pswitch_5
    const-string v0, "no_permission"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 372
    :pswitch_6
    const-string v0, "no_explicit_access"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 342
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
    .line 337
    check-cast p1, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
