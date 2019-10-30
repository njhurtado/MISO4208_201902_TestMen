.class Lcom/dropbox/core/v2/files/SaveCopyReferenceError$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "SaveCopyReferenceError.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/files/SaveCopyReferenceError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/files/SaveCopyReferenceError;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/files/SaveCopyReferenceError$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 289
    new-instance v0, Lcom/dropbox/core/v2/files/SaveCopyReferenceError$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/SaveCopyReferenceError$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/files/SaveCopyReferenceError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/SaveCopyReferenceError$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 288
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/files/SaveCopyReferenceError;
    .locals 6
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 329
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v4

    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v4, v5, :cond_0

    .line 330
    const/4 v0, 0x1

    .line 331
    .local v0, "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/files/SaveCopyReferenceError$Serializer;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v2

    .line 332
    .local v2, "tag":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 339
    :goto_0
    if-nez v2, :cond_1

    .line 340
    new-instance v4, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v5, "Required field missing: .tag"

    invoke-direct {v4, p1, v5}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v4

    .line 335
    .end local v0    # "collapsed":Z
    .end local v2    # "tag":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    .line 336
    .restart local v0    # "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/files/SaveCopyReferenceError$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 337
    invoke-static {p1}, Lcom/dropbox/core/v2/files/SaveCopyReferenceError$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "tag":Ljava/lang/String;
    goto :goto_0

    .line 342
    :cond_1
    const-string v4, "path"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 343
    const/4 v1, 0x0

    .line 344
    .local v1, "fieldValue":Lcom/dropbox/core/v2/files/WriteError;
    const-string v4, "path"

    invoke-static {v4, p1}, Lcom/dropbox/core/v2/files/SaveCopyReferenceError$Serializer;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 345
    sget-object v4, Lcom/dropbox/core/v2/files/WriteError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/WriteError$Serializer;

    invoke-virtual {v4, p1}, Lcom/dropbox/core/v2/files/WriteError$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/files/WriteError;

    move-result-object v1

    .line 346
    invoke-static {v1}, Lcom/dropbox/core/v2/files/SaveCopyReferenceError;->path(Lcom/dropbox/core/v2/files/WriteError;)Lcom/dropbox/core/v2/files/SaveCopyReferenceError;

    move-result-object v3

    .line 363
    .end local v1    # "fieldValue":Lcom/dropbox/core/v2/files/WriteError;
    .local v3, "value":Lcom/dropbox/core/v2/files/SaveCopyReferenceError;
    :goto_1
    if-nez v0, :cond_2

    .line 364
    invoke-static {p1}, Lcom/dropbox/core/v2/files/SaveCopyReferenceError$Serializer;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 365
    invoke-static {p1}, Lcom/dropbox/core/v2/files/SaveCopyReferenceError$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 367
    :cond_2
    return-object v3

    .line 348
    .end local v3    # "value":Lcom/dropbox/core/v2/files/SaveCopyReferenceError;
    :cond_3
    const-string v4, "invalid_copy_reference"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 349
    sget-object v3, Lcom/dropbox/core/v2/files/SaveCopyReferenceError;->INVALID_COPY_REFERENCE:Lcom/dropbox/core/v2/files/SaveCopyReferenceError;

    .restart local v3    # "value":Lcom/dropbox/core/v2/files/SaveCopyReferenceError;
    goto :goto_1

    .line 351
    .end local v3    # "value":Lcom/dropbox/core/v2/files/SaveCopyReferenceError;
    :cond_4
    const-string v4, "no_permission"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 352
    sget-object v3, Lcom/dropbox/core/v2/files/SaveCopyReferenceError;->NO_PERMISSION:Lcom/dropbox/core/v2/files/SaveCopyReferenceError;

    .restart local v3    # "value":Lcom/dropbox/core/v2/files/SaveCopyReferenceError;
    goto :goto_1

    .line 354
    .end local v3    # "value":Lcom/dropbox/core/v2/files/SaveCopyReferenceError;
    :cond_5
    const-string v4, "not_found"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 355
    sget-object v3, Lcom/dropbox/core/v2/files/SaveCopyReferenceError;->NOT_FOUND:Lcom/dropbox/core/v2/files/SaveCopyReferenceError;

    .restart local v3    # "value":Lcom/dropbox/core/v2/files/SaveCopyReferenceError;
    goto :goto_1

    .line 357
    .end local v3    # "value":Lcom/dropbox/core/v2/files/SaveCopyReferenceError;
    :cond_6
    const-string v4, "too_many_files"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 358
    sget-object v3, Lcom/dropbox/core/v2/files/SaveCopyReferenceError;->TOO_MANY_FILES:Lcom/dropbox/core/v2/files/SaveCopyReferenceError;

    .restart local v3    # "value":Lcom/dropbox/core/v2/files/SaveCopyReferenceError;
    goto :goto_1

    .line 361
    .end local v3    # "value":Lcom/dropbox/core/v2/files/SaveCopyReferenceError;
    :cond_7
    sget-object v3, Lcom/dropbox/core/v2/files/SaveCopyReferenceError;->OTHER:Lcom/dropbox/core/v2/files/SaveCopyReferenceError;

    .restart local v3    # "value":Lcom/dropbox/core/v2/files/SaveCopyReferenceError;
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
    .line 288
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/files/SaveCopyReferenceError$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/files/SaveCopyReferenceError;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/files/SaveCopyReferenceError;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 2
    .param p1, "value"    # Lcom/dropbox/core/v2/files/SaveCopyReferenceError;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 293
    sget-object v0, Lcom/dropbox/core/v2/files/SaveCopyReferenceError$1;->$SwitchMap$com$dropbox$core$v2$files$SaveCopyReferenceError$Tag:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/files/SaveCopyReferenceError;->tag()Lcom/dropbox/core/v2/files/SaveCopyReferenceError$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/files/SaveCopyReferenceError$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 319
    const-string v0, "other"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    .line 322
    :goto_0
    return-void

    .line 295
    :pswitch_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 296
    const-string v0, "path"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/files/SaveCopyReferenceError$Serializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 297
    const-string v0, "path"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 298
    sget-object v0, Lcom/dropbox/core/v2/files/WriteError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/WriteError$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/files/SaveCopyReferenceError;->access$000(Lcom/dropbox/core/v2/files/SaveCopyReferenceError;)Lcom/dropbox/core/v2/files/WriteError;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/files/WriteError$Serializer;->serialize(Lcom/dropbox/core/v2/files/WriteError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 299
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 303
    :pswitch_1
    const-string v0, "invalid_copy_reference"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 307
    :pswitch_2
    const-string v0, "no_permission"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 311
    :pswitch_3
    const-string v0, "not_found"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 315
    :pswitch_4
    const-string v0, "too_many_files"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 293
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
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
    .line 288
    check-cast p1, Lcom/dropbox/core/v2/files/SaveCopyReferenceError;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/files/SaveCopyReferenceError$Serializer;->serialize(Lcom/dropbox/core/v2/files/SaveCopyReferenceError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
