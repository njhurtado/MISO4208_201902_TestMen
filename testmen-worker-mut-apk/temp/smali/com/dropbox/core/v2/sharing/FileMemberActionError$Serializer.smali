.class Lcom/dropbox/core/v2/sharing/FileMemberActionError$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "FileMemberActionError.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/sharing/FileMemberActionError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/sharing/FileMemberActionError;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/sharing/FileMemberActionError$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 318
    new-instance v0, Lcom/dropbox/core/v2/sharing/FileMemberActionError$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/FileMemberActionError$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/sharing/FileMemberActionError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/FileMemberActionError$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 317
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/FileMemberActionError;
    .locals 6
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 357
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v4

    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v4, v5, :cond_0

    .line 358
    const/4 v0, 0x1

    .line 359
    .local v0, "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/FileMemberActionError$Serializer;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v2

    .line 360
    .local v2, "tag":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 367
    :goto_0
    if-nez v2, :cond_1

    .line 368
    new-instance v4, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v5, "Required field missing: .tag"

    invoke-direct {v4, p1, v5}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v4

    .line 363
    .end local v0    # "collapsed":Z
    .end local v2    # "tag":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    .line 364
    .restart local v0    # "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/FileMemberActionError$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 365
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/FileMemberActionError$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "tag":Ljava/lang/String;
    goto :goto_0

    .line 370
    :cond_1
    const-string v4, "invalid_member"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 371
    sget-object v3, Lcom/dropbox/core/v2/sharing/FileMemberActionError;->INVALID_MEMBER:Lcom/dropbox/core/v2/sharing/FileMemberActionError;

    .line 390
    .local v3, "value":Lcom/dropbox/core/v2/sharing/FileMemberActionError;
    :goto_1
    if-nez v0, :cond_2

    .line 391
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/FileMemberActionError$Serializer;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 392
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/FileMemberActionError$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 394
    :cond_2
    return-object v3

    .line 373
    .end local v3    # "value":Lcom/dropbox/core/v2/sharing/FileMemberActionError;
    :cond_3
    const-string v4, "no_permission"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 374
    sget-object v3, Lcom/dropbox/core/v2/sharing/FileMemberActionError;->NO_PERMISSION:Lcom/dropbox/core/v2/sharing/FileMemberActionError;

    .restart local v3    # "value":Lcom/dropbox/core/v2/sharing/FileMemberActionError;
    goto :goto_1

    .line 376
    .end local v3    # "value":Lcom/dropbox/core/v2/sharing/FileMemberActionError;
    :cond_4
    const-string v4, "access_error"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 377
    const/4 v1, 0x0

    .line 378
    .local v1, "fieldValue":Lcom/dropbox/core/v2/sharing/SharingFileAccessError;
    const-string v4, "access_error"

    invoke-static {v4, p1}, Lcom/dropbox/core/v2/sharing/FileMemberActionError$Serializer;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 379
    sget-object v4, Lcom/dropbox/core/v2/sharing/SharingFileAccessError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharingFileAccessError$Serializer;

    invoke-virtual {v4, p1}, Lcom/dropbox/core/v2/sharing/SharingFileAccessError$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    move-result-object v1

    .line 380
    invoke-static {v1}, Lcom/dropbox/core/v2/sharing/FileMemberActionError;->accessError(Lcom/dropbox/core/v2/sharing/SharingFileAccessError;)Lcom/dropbox/core/v2/sharing/FileMemberActionError;

    move-result-object v3

    .line 381
    .restart local v3    # "value":Lcom/dropbox/core/v2/sharing/FileMemberActionError;
    goto :goto_1

    .line 382
    .end local v1    # "fieldValue":Lcom/dropbox/core/v2/sharing/SharingFileAccessError;
    .end local v3    # "value":Lcom/dropbox/core/v2/sharing/FileMemberActionError;
    :cond_5
    const-string v4, "no_explicit_access"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 383
    const/4 v1, 0x0

    .line 384
    .local v1, "fieldValue":Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;
    sget-object v4, Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult$Serializer;

    const/4 v5, 0x1

    invoke-virtual {v4, p1, v5}, Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;

    move-result-object v1

    .line 385
    invoke-static {v1}, Lcom/dropbox/core/v2/sharing/FileMemberActionError;->noExplicitAccess(Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;)Lcom/dropbox/core/v2/sharing/FileMemberActionError;

    move-result-object v3

    .line 386
    .restart local v3    # "value":Lcom/dropbox/core/v2/sharing/FileMemberActionError;
    goto :goto_1

    .line 388
    .end local v1    # "fieldValue":Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;
    .end local v3    # "value":Lcom/dropbox/core/v2/sharing/FileMemberActionError;
    :cond_6
    sget-object v3, Lcom/dropbox/core/v2/sharing/FileMemberActionError;->OTHER:Lcom/dropbox/core/v2/sharing/FileMemberActionError;

    .restart local v3    # "value":Lcom/dropbox/core/v2/sharing/FileMemberActionError;
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
    .line 317
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/sharing/FileMemberActionError$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/FileMemberActionError;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/sharing/FileMemberActionError;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 3
    .param p1, "value"    # Lcom/dropbox/core/v2/sharing/FileMemberActionError;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 322
    sget-object v0, Lcom/dropbox/core/v2/sharing/FileMemberActionError$1;->$SwitchMap$com$dropbox$core$v2$sharing$FileMemberActionError$Tag:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/sharing/FileMemberActionError;->tag()Lcom/dropbox/core/v2/sharing/FileMemberActionError$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/sharing/FileMemberActionError$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 347
    const-string v0, "other"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    .line 350
    :goto_0
    return-void

    .line 324
    :pswitch_0
    const-string v0, "invalid_member"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 328
    :pswitch_1
    const-string v0, "no_permission"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 332
    :pswitch_2
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 333
    const-string v0, "access_error"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/sharing/FileMemberActionError$Serializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 334
    const-string v0, "access_error"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 335
    sget-object v0, Lcom/dropbox/core/v2/sharing/SharingFileAccessError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharingFileAccessError$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/FileMemberActionError;->access$000(Lcom/dropbox/core/v2/sharing/FileMemberActionError;)Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/sharing/SharingFileAccessError$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/SharingFileAccessError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 336
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 340
    :pswitch_3
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 341
    const-string v0, "no_explicit_access"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/sharing/FileMemberActionError$Serializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 342
    sget-object v0, Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/FileMemberActionError;->access$100(Lcom/dropbox/core/v2/sharing/FileMemberActionError;)Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 343
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 322
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
    .line 317
    check-cast p1, Lcom/dropbox/core/v2/sharing/FileMemberActionError;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/sharing/FileMemberActionError$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/FileMemberActionError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
