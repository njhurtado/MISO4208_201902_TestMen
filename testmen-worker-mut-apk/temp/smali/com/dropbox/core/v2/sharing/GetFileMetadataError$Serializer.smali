.class Lcom/dropbox/core/v2/sharing/GetFileMetadataError$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "GetFileMetadataError.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/sharing/GetFileMetadataError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/sharing/GetFileMetadataError;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/sharing/GetFileMetadataError$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 260
    new-instance v0, Lcom/dropbox/core/v2/sharing/GetFileMetadataError$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/GetFileMetadataError$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/sharing/GetFileMetadataError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/GetFileMetadataError$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 259
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/GetFileMetadataError;
    .locals 6
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 292
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v4

    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v4, v5, :cond_0

    .line 293
    const/4 v0, 0x1

    .line 294
    .local v0, "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/GetFileMetadataError$Serializer;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v2

    .line 295
    .local v2, "tag":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 302
    :goto_0
    if-nez v2, :cond_1

    .line 303
    new-instance v4, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v5, "Required field missing: .tag"

    invoke-direct {v4, p1, v5}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v4

    .line 298
    .end local v0    # "collapsed":Z
    .end local v2    # "tag":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    .line 299
    .restart local v0    # "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/GetFileMetadataError$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 300
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/GetFileMetadataError$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "tag":Ljava/lang/String;
    goto :goto_0

    .line 305
    :cond_1
    const-string v4, "user_error"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 306
    const/4 v1, 0x0

    .line 307
    .local v1, "fieldValue":Lcom/dropbox/core/v2/sharing/SharingUserError;
    const-string v4, "user_error"

    invoke-static {v4, p1}, Lcom/dropbox/core/v2/sharing/GetFileMetadataError$Serializer;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 308
    sget-object v4, Lcom/dropbox/core/v2/sharing/SharingUserError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharingUserError$Serializer;

    invoke-virtual {v4, p1}, Lcom/dropbox/core/v2/sharing/SharingUserError$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/SharingUserError;

    move-result-object v1

    .line 309
    invoke-static {v1}, Lcom/dropbox/core/v2/sharing/GetFileMetadataError;->userError(Lcom/dropbox/core/v2/sharing/SharingUserError;)Lcom/dropbox/core/v2/sharing/GetFileMetadataError;

    move-result-object v3

    .line 320
    .end local v1    # "fieldValue":Lcom/dropbox/core/v2/sharing/SharingUserError;
    .local v3, "value":Lcom/dropbox/core/v2/sharing/GetFileMetadataError;
    :goto_1
    if-nez v0, :cond_2

    .line 321
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/GetFileMetadataError$Serializer;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 322
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/GetFileMetadataError$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 324
    :cond_2
    return-object v3

    .line 311
    .end local v3    # "value":Lcom/dropbox/core/v2/sharing/GetFileMetadataError;
    :cond_3
    const-string v4, "access_error"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 312
    const/4 v1, 0x0

    .line 313
    .local v1, "fieldValue":Lcom/dropbox/core/v2/sharing/SharingFileAccessError;
    const-string v4, "access_error"

    invoke-static {v4, p1}, Lcom/dropbox/core/v2/sharing/GetFileMetadataError$Serializer;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 314
    sget-object v4, Lcom/dropbox/core/v2/sharing/SharingFileAccessError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharingFileAccessError$Serializer;

    invoke-virtual {v4, p1}, Lcom/dropbox/core/v2/sharing/SharingFileAccessError$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    move-result-object v1

    .line 315
    invoke-static {v1}, Lcom/dropbox/core/v2/sharing/GetFileMetadataError;->accessError(Lcom/dropbox/core/v2/sharing/SharingFileAccessError;)Lcom/dropbox/core/v2/sharing/GetFileMetadataError;

    move-result-object v3

    .line 316
    .restart local v3    # "value":Lcom/dropbox/core/v2/sharing/GetFileMetadataError;
    goto :goto_1

    .line 318
    .end local v1    # "fieldValue":Lcom/dropbox/core/v2/sharing/SharingFileAccessError;
    .end local v3    # "value":Lcom/dropbox/core/v2/sharing/GetFileMetadataError;
    :cond_4
    sget-object v3, Lcom/dropbox/core/v2/sharing/GetFileMetadataError;->OTHER:Lcom/dropbox/core/v2/sharing/GetFileMetadataError;

    .restart local v3    # "value":Lcom/dropbox/core/v2/sharing/GetFileMetadataError;
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
    .line 259
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/sharing/GetFileMetadataError$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/GetFileMetadataError;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/sharing/GetFileMetadataError;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 2
    .param p1, "value"    # Lcom/dropbox/core/v2/sharing/GetFileMetadataError;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 264
    sget-object v0, Lcom/dropbox/core/v2/sharing/GetFileMetadataError$1;->$SwitchMap$com$dropbox$core$v2$sharing$GetFileMetadataError$Tag:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/sharing/GetFileMetadataError;->tag()Lcom/dropbox/core/v2/sharing/GetFileMetadataError$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/sharing/GetFileMetadataError$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 282
    const-string v0, "other"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    .line 285
    :goto_0
    return-void

    .line 266
    :pswitch_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 267
    const-string v0, "user_error"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/sharing/GetFileMetadataError$Serializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 268
    const-string v0, "user_error"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 269
    sget-object v0, Lcom/dropbox/core/v2/sharing/SharingUserError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharingUserError$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/GetFileMetadataError;->access$000(Lcom/dropbox/core/v2/sharing/GetFileMetadataError;)Lcom/dropbox/core/v2/sharing/SharingUserError;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/sharing/SharingUserError$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/SharingUserError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 270
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 274
    :pswitch_1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 275
    const-string v0, "access_error"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/sharing/GetFileMetadataError$Serializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 276
    const-string v0, "access_error"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 277
    sget-object v0, Lcom/dropbox/core/v2/sharing/SharingFileAccessError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharingFileAccessError$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/GetFileMetadataError;->access$100(Lcom/dropbox/core/v2/sharing/GetFileMetadataError;)Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/sharing/SharingFileAccessError$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/SharingFileAccessError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 278
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 264
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
    .line 259
    check-cast p1, Lcom/dropbox/core/v2/sharing/GetFileMetadataError;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/sharing/GetFileMetadataError$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/GetFileMetadataError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
