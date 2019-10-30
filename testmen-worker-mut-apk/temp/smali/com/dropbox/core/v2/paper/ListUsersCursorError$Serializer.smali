.class Lcom/dropbox/core/v2/paper/ListUsersCursorError$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "ListUsersCursorError.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/paper/ListUsersCursorError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/paper/ListUsersCursorError;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/paper/ListUsersCursorError$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 238
    new-instance v0, Lcom/dropbox/core/v2/paper/ListUsersCursorError$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/paper/ListUsersCursorError$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/paper/ListUsersCursorError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/ListUsersCursorError$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 237
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/paper/ListUsersCursorError;
    .locals 7
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 274
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v4

    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v4, v5, :cond_0

    .line 275
    const/4 v0, 0x1

    .line 276
    .local v0, "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/paper/ListUsersCursorError$Serializer;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v2

    .line 277
    .local v2, "tag":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 284
    :goto_0
    if-nez v2, :cond_1

    .line 285
    new-instance v4, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v5, "Required field missing: .tag"

    invoke-direct {v4, p1, v5}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v4

    .line 280
    .end local v0    # "collapsed":Z
    .end local v2    # "tag":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    .line 281
    .restart local v0    # "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/paper/ListUsersCursorError$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 282
    invoke-static {p1}, Lcom/dropbox/core/v2/paper/ListUsersCursorError$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "tag":Ljava/lang/String;
    goto :goto_0

    .line 287
    :cond_1
    const-string v4, "insufficient_permissions"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 288
    sget-object v3, Lcom/dropbox/core/v2/paper/ListUsersCursorError;->INSUFFICIENT_PERMISSIONS:Lcom/dropbox/core/v2/paper/ListUsersCursorError;

    .line 305
    .local v3, "value":Lcom/dropbox/core/v2/paper/ListUsersCursorError;
    :goto_1
    if-nez v0, :cond_2

    .line 306
    invoke-static {p1}, Lcom/dropbox/core/v2/paper/ListUsersCursorError$Serializer;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 307
    invoke-static {p1}, Lcom/dropbox/core/v2/paper/ListUsersCursorError$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 309
    :cond_2
    return-object v3

    .line 290
    .end local v3    # "value":Lcom/dropbox/core/v2/paper/ListUsersCursorError;
    :cond_3
    const-string v4, "other"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 291
    sget-object v3, Lcom/dropbox/core/v2/paper/ListUsersCursorError;->OTHER:Lcom/dropbox/core/v2/paper/ListUsersCursorError;

    .restart local v3    # "value":Lcom/dropbox/core/v2/paper/ListUsersCursorError;
    goto :goto_1

    .line 293
    .end local v3    # "value":Lcom/dropbox/core/v2/paper/ListUsersCursorError;
    :cond_4
    const-string v4, "doc_not_found"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 294
    sget-object v3, Lcom/dropbox/core/v2/paper/ListUsersCursorError;->DOC_NOT_FOUND:Lcom/dropbox/core/v2/paper/ListUsersCursorError;

    .restart local v3    # "value":Lcom/dropbox/core/v2/paper/ListUsersCursorError;
    goto :goto_1

    .line 296
    .end local v3    # "value":Lcom/dropbox/core/v2/paper/ListUsersCursorError;
    :cond_5
    const-string v4, "cursor_error"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 297
    const/4 v1, 0x0

    .line 298
    .local v1, "fieldValue":Lcom/dropbox/core/v2/paper/PaperApiCursorError;
    const-string v4, "cursor_error"

    invoke-static {v4, p1}, Lcom/dropbox/core/v2/paper/ListUsersCursorError$Serializer;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 299
    sget-object v4, Lcom/dropbox/core/v2/paper/PaperApiCursorError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/PaperApiCursorError$Serializer;

    invoke-virtual {v4, p1}, Lcom/dropbox/core/v2/paper/PaperApiCursorError$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/paper/PaperApiCursorError;

    move-result-object v1

    .line 300
    invoke-static {v1}, Lcom/dropbox/core/v2/paper/ListUsersCursorError;->cursorError(Lcom/dropbox/core/v2/paper/PaperApiCursorError;)Lcom/dropbox/core/v2/paper/ListUsersCursorError;

    move-result-object v3

    .line 301
    .restart local v3    # "value":Lcom/dropbox/core/v2/paper/ListUsersCursorError;
    goto :goto_1

    .line 303
    .end local v1    # "fieldValue":Lcom/dropbox/core/v2/paper/PaperApiCursorError;
    .end local v3    # "value":Lcom/dropbox/core/v2/paper/ListUsersCursorError;
    :cond_6
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
    .line 237
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/paper/ListUsersCursorError$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/paper/ListUsersCursorError;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/paper/ListUsersCursorError;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 3
    .param p1, "value"    # Lcom/dropbox/core/v2/paper/ListUsersCursorError;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 242
    sget-object v0, Lcom/dropbox/core/v2/paper/ListUsersCursorError$1;->$SwitchMap$com$dropbox$core$v2$paper$ListUsersCursorError$Tag:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/paper/ListUsersCursorError;->tag()Lcom/dropbox/core/v2/paper/ListUsersCursorError$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/paper/ListUsersCursorError$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 264
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/v2/paper/ListUsersCursorError;->tag()Lcom/dropbox/core/v2/paper/ListUsersCursorError$Tag;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 244
    :pswitch_0
    const-string v0, "insufficient_permissions"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    .line 267
    :goto_0
    return-void

    .line 248
    :pswitch_1
    const-string v0, "other"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 252
    :pswitch_2
    const-string v0, "doc_not_found"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 256
    :pswitch_3
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 257
    const-string v0, "cursor_error"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/paper/ListUsersCursorError$Serializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 258
    const-string v0, "cursor_error"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 259
    sget-object v0, Lcom/dropbox/core/v2/paper/PaperApiCursorError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/PaperApiCursorError$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/paper/ListUsersCursorError;->access$000(Lcom/dropbox/core/v2/paper/ListUsersCursorError;)Lcom/dropbox/core/v2/paper/PaperApiCursorError;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/paper/PaperApiCursorError$Serializer;->serialize(Lcom/dropbox/core/v2/paper/PaperApiCursorError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 260
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 242
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
    .line 237
    check-cast p1, Lcom/dropbox/core/v2/paper/ListUsersCursorError;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/paper/ListUsersCursorError$Serializer;->serialize(Lcom/dropbox/core/v2/paper/ListUsersCursorError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
