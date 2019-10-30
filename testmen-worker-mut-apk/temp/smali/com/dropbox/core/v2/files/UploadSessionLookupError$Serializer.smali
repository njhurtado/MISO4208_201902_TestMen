.class Lcom/dropbox/core/v2/files/UploadSessionLookupError$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "UploadSessionLookupError.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/files/UploadSessionLookupError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/files/UploadSessionLookupError;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/files/UploadSessionLookupError$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 286
    new-instance v0, Lcom/dropbox/core/v2/files/UploadSessionLookupError$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/UploadSessionLookupError$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/files/UploadSessionLookupError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/UploadSessionLookupError$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 285
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/files/UploadSessionLookupError;
    .locals 6
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 321
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v4

    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v4, v5, :cond_0

    .line 322
    const/4 v0, 0x1

    .line 323
    .local v0, "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/files/UploadSessionLookupError$Serializer;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v2

    .line 324
    .local v2, "tag":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 331
    :goto_0
    if-nez v2, :cond_1

    .line 332
    new-instance v4, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v5, "Required field missing: .tag"

    invoke-direct {v4, p1, v5}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v4

    .line 327
    .end local v0    # "collapsed":Z
    .end local v2    # "tag":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    .line 328
    .restart local v0    # "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/files/UploadSessionLookupError$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 329
    invoke-static {p1}, Lcom/dropbox/core/v2/files/UploadSessionLookupError$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "tag":Ljava/lang/String;
    goto :goto_0

    .line 334
    :cond_1
    const-string v4, "not_found"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 335
    sget-object v3, Lcom/dropbox/core/v2/files/UploadSessionLookupError;->NOT_FOUND:Lcom/dropbox/core/v2/files/UploadSessionLookupError;

    .line 351
    .local v3, "value":Lcom/dropbox/core/v2/files/UploadSessionLookupError;
    :goto_1
    if-nez v0, :cond_2

    .line 352
    invoke-static {p1}, Lcom/dropbox/core/v2/files/UploadSessionLookupError$Serializer;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 353
    invoke-static {p1}, Lcom/dropbox/core/v2/files/UploadSessionLookupError$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 355
    :cond_2
    return-object v3

    .line 337
    .end local v3    # "value":Lcom/dropbox/core/v2/files/UploadSessionLookupError;
    :cond_3
    const-string v4, "incorrect_offset"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 338
    const/4 v1, 0x0

    .line 339
    .local v1, "fieldValue":Lcom/dropbox/core/v2/files/UploadSessionOffsetError;
    sget-object v4, Lcom/dropbox/core/v2/files/UploadSessionOffsetError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/UploadSessionOffsetError$Serializer;

    const/4 v5, 0x1

    invoke-virtual {v4, p1, v5}, Lcom/dropbox/core/v2/files/UploadSessionOffsetError$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/files/UploadSessionOffsetError;

    move-result-object v1

    .line 340
    invoke-static {v1}, Lcom/dropbox/core/v2/files/UploadSessionLookupError;->incorrectOffset(Lcom/dropbox/core/v2/files/UploadSessionOffsetError;)Lcom/dropbox/core/v2/files/UploadSessionLookupError;

    move-result-object v3

    .line 341
    .restart local v3    # "value":Lcom/dropbox/core/v2/files/UploadSessionLookupError;
    goto :goto_1

    .line 342
    .end local v1    # "fieldValue":Lcom/dropbox/core/v2/files/UploadSessionOffsetError;
    .end local v3    # "value":Lcom/dropbox/core/v2/files/UploadSessionLookupError;
    :cond_4
    const-string v4, "closed"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 343
    sget-object v3, Lcom/dropbox/core/v2/files/UploadSessionLookupError;->CLOSED:Lcom/dropbox/core/v2/files/UploadSessionLookupError;

    .restart local v3    # "value":Lcom/dropbox/core/v2/files/UploadSessionLookupError;
    goto :goto_1

    .line 345
    .end local v3    # "value":Lcom/dropbox/core/v2/files/UploadSessionLookupError;
    :cond_5
    const-string v4, "not_closed"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 346
    sget-object v3, Lcom/dropbox/core/v2/files/UploadSessionLookupError;->NOT_CLOSED:Lcom/dropbox/core/v2/files/UploadSessionLookupError;

    .restart local v3    # "value":Lcom/dropbox/core/v2/files/UploadSessionLookupError;
    goto :goto_1

    .line 349
    .end local v3    # "value":Lcom/dropbox/core/v2/files/UploadSessionLookupError;
    :cond_6
    sget-object v3, Lcom/dropbox/core/v2/files/UploadSessionLookupError;->OTHER:Lcom/dropbox/core/v2/files/UploadSessionLookupError;

    .restart local v3    # "value":Lcom/dropbox/core/v2/files/UploadSessionLookupError;
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
    .line 285
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/files/UploadSessionLookupError$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/files/UploadSessionLookupError;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/files/UploadSessionLookupError;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 3
    .param p1, "value"    # Lcom/dropbox/core/v2/files/UploadSessionLookupError;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 290
    sget-object v0, Lcom/dropbox/core/v2/files/UploadSessionLookupError$1;->$SwitchMap$com$dropbox$core$v2$files$UploadSessionLookupError$Tag:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/files/UploadSessionLookupError;->tag()Lcom/dropbox/core/v2/files/UploadSessionLookupError$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/files/UploadSessionLookupError$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 311
    const-string v0, "other"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    .line 314
    :goto_0
    return-void

    .line 292
    :pswitch_0
    const-string v0, "not_found"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 296
    :pswitch_1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 297
    const-string v0, "incorrect_offset"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/files/UploadSessionLookupError$Serializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 298
    sget-object v0, Lcom/dropbox/core/v2/files/UploadSessionOffsetError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/UploadSessionOffsetError$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/files/UploadSessionLookupError;->access$000(Lcom/dropbox/core/v2/files/UploadSessionLookupError;)Lcom/dropbox/core/v2/files/UploadSessionOffsetError;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/files/UploadSessionOffsetError$Serializer;->serialize(Lcom/dropbox/core/v2/files/UploadSessionOffsetError;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 299
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 303
    :pswitch_2
    const-string v0, "closed"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 307
    :pswitch_3
    const-string v0, "not_closed"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 290
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
    .line 285
    check-cast p1, Lcom/dropbox/core/v2/files/UploadSessionLookupError;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/files/UploadSessionLookupError$Serializer;->serialize(Lcom/dropbox/core/v2/files/UploadSessionLookupError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
