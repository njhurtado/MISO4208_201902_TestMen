.class Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "FileMemberRemoveActionResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 267
    new-instance v0, Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 266
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult;
    .locals 6
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 298
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v4

    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v4, v5, :cond_0

    .line 299
    const/4 v0, 0x1

    .line 300
    .local v0, "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult$Serializer;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v2

    .line 301
    .local v2, "tag":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 308
    :goto_0
    if-nez v2, :cond_1

    .line 309
    new-instance v4, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v5, "Required field missing: .tag"

    invoke-direct {v4, p1, v5}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v4

    .line 304
    .end local v0    # "collapsed":Z
    .end local v2    # "tag":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    .line 305
    .restart local v0    # "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 306
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "tag":Ljava/lang/String;
    goto :goto_0

    .line 311
    :cond_1
    const-string v4, "success"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 312
    const/4 v1, 0x0

    .line 313
    .local v1, "fieldValue":Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;
    sget-object v4, Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult$Serializer;

    const/4 v5, 0x1

    invoke-virtual {v4, p1, v5}, Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;

    move-result-object v1

    .line 314
    invoke-static {v1}, Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult;->success(Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;)Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult;

    move-result-object v3

    .line 325
    .end local v1    # "fieldValue":Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;
    .local v3, "value":Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult;
    :goto_1
    if-nez v0, :cond_2

    .line 326
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult$Serializer;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 327
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 329
    :cond_2
    return-object v3

    .line 316
    .end local v3    # "value":Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult;
    :cond_3
    const-string v4, "member_error"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 317
    const/4 v1, 0x0

    .line 318
    .local v1, "fieldValue":Lcom/dropbox/core/v2/sharing/FileMemberActionError;
    const-string v4, "member_error"

    invoke-static {v4, p1}, Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult$Serializer;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 319
    sget-object v4, Lcom/dropbox/core/v2/sharing/FileMemberActionError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/FileMemberActionError$Serializer;

    invoke-virtual {v4, p1}, Lcom/dropbox/core/v2/sharing/FileMemberActionError$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/FileMemberActionError;

    move-result-object v1

    .line 320
    invoke-static {v1}, Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult;->memberError(Lcom/dropbox/core/v2/sharing/FileMemberActionError;)Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult;

    move-result-object v3

    .line 321
    .restart local v3    # "value":Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult;
    goto :goto_1

    .line 323
    .end local v1    # "fieldValue":Lcom/dropbox/core/v2/sharing/FileMemberActionError;
    .end local v3    # "value":Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult;
    :cond_4
    sget-object v3, Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult;->OTHER:Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult;

    .restart local v3    # "value":Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult;
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
    .line 266
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 3
    .param p1, "value"    # Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 271
    sget-object v0, Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult$1;->$SwitchMap$com$dropbox$core$v2$sharing$FileMemberRemoveActionResult$Tag:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult;->tag()Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 288
    const-string v0, "other"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    .line 291
    :goto_0
    return-void

    .line 273
    :pswitch_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 274
    const-string v0, "success"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult$Serializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 275
    sget-object v0, Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult;->access$000(Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult;)Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 276
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 280
    :pswitch_1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 281
    const-string v0, "member_error"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult$Serializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 282
    const-string v0, "member_error"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 283
    sget-object v0, Lcom/dropbox/core/v2/sharing/FileMemberActionError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/FileMemberActionError$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult;->access$100(Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult;)Lcom/dropbox/core/v2/sharing/FileMemberActionError;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/sharing/FileMemberActionError$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/FileMemberActionError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 284
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 271
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
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
    .line 266
    check-cast p1, Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
