.class Lcom/dropbox/core/v2/team/TeamFolderRenameError$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "TeamFolderRenameError.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/team/TeamFolderRenameError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/team/TeamFolderRenameError;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/team/TeamFolderRenameError$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 313
    new-instance v0, Lcom/dropbox/core/v2/team/TeamFolderRenameError$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/TeamFolderRenameError$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/team/TeamFolderRenameError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/TeamFolderRenameError$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 312
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/team/TeamFolderRenameError;
    .locals 7
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 361
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v4

    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v4, v5, :cond_0

    .line 362
    const/4 v0, 0x1

    .line 363
    .local v0, "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/team/TeamFolderRenameError$Serializer;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v2

    .line 364
    .local v2, "tag":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 371
    :goto_0
    if-nez v2, :cond_1

    .line 372
    new-instance v4, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v5, "Required field missing: .tag"

    invoke-direct {v4, p1, v5}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v4

    .line 367
    .end local v0    # "collapsed":Z
    .end local v2    # "tag":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    .line 368
    .restart local v0    # "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/team/TeamFolderRenameError$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 369
    invoke-static {p1}, Lcom/dropbox/core/v2/team/TeamFolderRenameError$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "tag":Ljava/lang/String;
    goto :goto_0

    .line 374
    :cond_1
    const-string v4, "access_error"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 375
    const/4 v1, 0x0

    .line 376
    .local v1, "fieldValue":Lcom/dropbox/core/v2/team/TeamFolderAccessError;
    const-string v4, "access_error"

    invoke-static {v4, p1}, Lcom/dropbox/core/v2/team/TeamFolderRenameError$Serializer;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 377
    sget-object v4, Lcom/dropbox/core/v2/team/TeamFolderAccessError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/TeamFolderAccessError$Serializer;

    invoke-virtual {v4, p1}, Lcom/dropbox/core/v2/team/TeamFolderAccessError$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/team/TeamFolderAccessError;

    move-result-object v1

    .line 378
    invoke-static {v1}, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->accessError(Lcom/dropbox/core/v2/team/TeamFolderAccessError;)Lcom/dropbox/core/v2/team/TeamFolderRenameError;

    move-result-object v3

    .line 401
    .end local v1    # "fieldValue":Lcom/dropbox/core/v2/team/TeamFolderAccessError;
    .local v3, "value":Lcom/dropbox/core/v2/team/TeamFolderRenameError;
    :goto_1
    if-nez v0, :cond_2

    .line 402
    invoke-static {p1}, Lcom/dropbox/core/v2/team/TeamFolderRenameError$Serializer;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 403
    invoke-static {p1}, Lcom/dropbox/core/v2/team/TeamFolderRenameError$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 405
    :cond_2
    return-object v3

    .line 380
    .end local v3    # "value":Lcom/dropbox/core/v2/team/TeamFolderRenameError;
    :cond_3
    const-string v4, "status_error"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 381
    const/4 v1, 0x0

    .line 382
    .local v1, "fieldValue":Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError;
    const-string v4, "status_error"

    invoke-static {v4, p1}, Lcom/dropbox/core/v2/team/TeamFolderRenameError$Serializer;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 383
    sget-object v4, Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError$Serializer;

    invoke-virtual {v4, p1}, Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError;

    move-result-object v1

    .line 384
    invoke-static {v1}, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->statusError(Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError;)Lcom/dropbox/core/v2/team/TeamFolderRenameError;

    move-result-object v3

    .line 385
    .restart local v3    # "value":Lcom/dropbox/core/v2/team/TeamFolderRenameError;
    goto :goto_1

    .line 386
    .end local v1    # "fieldValue":Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError;
    .end local v3    # "value":Lcom/dropbox/core/v2/team/TeamFolderRenameError;
    :cond_4
    const-string v4, "other"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 387
    sget-object v3, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->OTHER:Lcom/dropbox/core/v2/team/TeamFolderRenameError;

    .restart local v3    # "value":Lcom/dropbox/core/v2/team/TeamFolderRenameError;
    goto :goto_1

    .line 389
    .end local v3    # "value":Lcom/dropbox/core/v2/team/TeamFolderRenameError;
    :cond_5
    const-string v4, "invalid_folder_name"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 390
    sget-object v3, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->INVALID_FOLDER_NAME:Lcom/dropbox/core/v2/team/TeamFolderRenameError;

    .restart local v3    # "value":Lcom/dropbox/core/v2/team/TeamFolderRenameError;
    goto :goto_1

    .line 392
    .end local v3    # "value":Lcom/dropbox/core/v2/team/TeamFolderRenameError;
    :cond_6
    const-string v4, "folder_name_already_used"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 393
    sget-object v3, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->FOLDER_NAME_ALREADY_USED:Lcom/dropbox/core/v2/team/TeamFolderRenameError;

    .restart local v3    # "value":Lcom/dropbox/core/v2/team/TeamFolderRenameError;
    goto :goto_1

    .line 395
    .end local v3    # "value":Lcom/dropbox/core/v2/team/TeamFolderRenameError;
    :cond_7
    const-string v4, "folder_name_reserved"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 396
    sget-object v3, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->FOLDER_NAME_RESERVED:Lcom/dropbox/core/v2/team/TeamFolderRenameError;

    .restart local v3    # "value":Lcom/dropbox/core/v2/team/TeamFolderRenameError;
    goto :goto_1

    .line 399
    .end local v3    # "value":Lcom/dropbox/core/v2/team/TeamFolderRenameError;
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
    .line 312
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/team/TeamFolderRenameError$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/team/TeamFolderRenameError;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/team/TeamFolderRenameError;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 3
    .param p1, "value"    # Lcom/dropbox/core/v2/team/TeamFolderRenameError;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 317
    sget-object v0, Lcom/dropbox/core/v2/team/TeamFolderRenameError$1;->$SwitchMap$com$dropbox$core$v2$team$TeamFolderRenameError$Tag:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->tag()Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 351
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->tag()Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 319
    :pswitch_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 320
    const-string v0, "access_error"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/team/TeamFolderRenameError$Serializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 321
    const-string v0, "access_error"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 322
    sget-object v0, Lcom/dropbox/core/v2/team/TeamFolderAccessError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/TeamFolderAccessError$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->access$000(Lcom/dropbox/core/v2/team/TeamFolderRenameError;)Lcom/dropbox/core/v2/team/TeamFolderAccessError;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/team/TeamFolderAccessError$Serializer;->serialize(Lcom/dropbox/core/v2/team/TeamFolderAccessError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 323
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 354
    :goto_0
    return-void

    .line 327
    :pswitch_1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 328
    const-string v0, "status_error"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/team/TeamFolderRenameError$Serializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 329
    const-string v0, "status_error"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 330
    sget-object v0, Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->access$100(Lcom/dropbox/core/v2/team/TeamFolderRenameError;)Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError$Serializer;->serialize(Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 331
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 335
    :pswitch_2
    const-string v0, "other"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 339
    :pswitch_3
    const-string v0, "invalid_folder_name"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 343
    :pswitch_4
    const-string v0, "folder_name_already_used"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 347
    :pswitch_5
    const-string v0, "folder_name_reserved"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 317
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
    .line 312
    check-cast p1, Lcom/dropbox/core/v2/team/TeamFolderRenameError;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/team/TeamFolderRenameError$Serializer;->serialize(Lcom/dropbox/core/v2/team/TeamFolderRenameError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
