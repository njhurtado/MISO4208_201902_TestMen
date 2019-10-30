.class Lcom/dropbox/core/v2/team/TeamFolderActivateError$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "TeamFolderActivateError.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/team/TeamFolderActivateError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/team/TeamFolderActivateError;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/team/TeamFolderActivateError$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 250
    new-instance v0, Lcom/dropbox/core/v2/team/TeamFolderActivateError$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/TeamFolderActivateError$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/team/TeamFolderActivateError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/TeamFolderActivateError$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 249
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/team/TeamFolderActivateError;
    .locals 7
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 286
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v4

    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v4, v5, :cond_0

    .line 287
    const/4 v0, 0x1

    .line 288
    .local v0, "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/team/TeamFolderActivateError$Serializer;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v2

    .line 289
    .local v2, "tag":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 296
    :goto_0
    if-nez v2, :cond_1

    .line 297
    new-instance v4, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v5, "Required field missing: .tag"

    invoke-direct {v4, p1, v5}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v4

    .line 292
    .end local v0    # "collapsed":Z
    .end local v2    # "tag":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    .line 293
    .restart local v0    # "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/team/TeamFolderActivateError$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 294
    invoke-static {p1}, Lcom/dropbox/core/v2/team/TeamFolderActivateError$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "tag":Ljava/lang/String;
    goto :goto_0

    .line 299
    :cond_1
    const-string v4, "access_error"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 300
    const/4 v1, 0x0

    .line 301
    .local v1, "fieldValue":Lcom/dropbox/core/v2/team/TeamFolderAccessError;
    const-string v4, "access_error"

    invoke-static {v4, p1}, Lcom/dropbox/core/v2/team/TeamFolderActivateError$Serializer;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 302
    sget-object v4, Lcom/dropbox/core/v2/team/TeamFolderAccessError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/TeamFolderAccessError$Serializer;

    invoke-virtual {v4, p1}, Lcom/dropbox/core/v2/team/TeamFolderAccessError$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/team/TeamFolderAccessError;

    move-result-object v1

    .line 303
    invoke-static {v1}, Lcom/dropbox/core/v2/team/TeamFolderActivateError;->accessError(Lcom/dropbox/core/v2/team/TeamFolderAccessError;)Lcom/dropbox/core/v2/team/TeamFolderActivateError;

    move-result-object v3

    .line 317
    .end local v1    # "fieldValue":Lcom/dropbox/core/v2/team/TeamFolderAccessError;
    .local v3, "value":Lcom/dropbox/core/v2/team/TeamFolderActivateError;
    :goto_1
    if-nez v0, :cond_2

    .line 318
    invoke-static {p1}, Lcom/dropbox/core/v2/team/TeamFolderActivateError$Serializer;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 319
    invoke-static {p1}, Lcom/dropbox/core/v2/team/TeamFolderActivateError$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 321
    :cond_2
    return-object v3

    .line 305
    .end local v3    # "value":Lcom/dropbox/core/v2/team/TeamFolderActivateError;
    :cond_3
    const-string v4, "status_error"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 306
    const/4 v1, 0x0

    .line 307
    .local v1, "fieldValue":Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError;
    const-string v4, "status_error"

    invoke-static {v4, p1}, Lcom/dropbox/core/v2/team/TeamFolderActivateError$Serializer;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 308
    sget-object v4, Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError$Serializer;

    invoke-virtual {v4, p1}, Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError;

    move-result-object v1

    .line 309
    invoke-static {v1}, Lcom/dropbox/core/v2/team/TeamFolderActivateError;->statusError(Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError;)Lcom/dropbox/core/v2/team/TeamFolderActivateError;

    move-result-object v3

    .line 310
    .restart local v3    # "value":Lcom/dropbox/core/v2/team/TeamFolderActivateError;
    goto :goto_1

    .line 311
    .end local v1    # "fieldValue":Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError;
    .end local v3    # "value":Lcom/dropbox/core/v2/team/TeamFolderActivateError;
    :cond_4
    const-string v4, "other"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 312
    sget-object v3, Lcom/dropbox/core/v2/team/TeamFolderActivateError;->OTHER:Lcom/dropbox/core/v2/team/TeamFolderActivateError;

    .restart local v3    # "value":Lcom/dropbox/core/v2/team/TeamFolderActivateError;
    goto :goto_1

    .line 315
    .end local v3    # "value":Lcom/dropbox/core/v2/team/TeamFolderActivateError;
    :cond_5
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
    .line 249
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/team/TeamFolderActivateError$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/team/TeamFolderActivateError;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/team/TeamFolderActivateError;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 3
    .param p1, "value"    # Lcom/dropbox/core/v2/team/TeamFolderActivateError;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 254
    sget-object v0, Lcom/dropbox/core/v2/team/TeamFolderActivateError$1;->$SwitchMap$com$dropbox$core$v2$team$TeamFolderActivateError$Tag:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/team/TeamFolderActivateError;->tag()Lcom/dropbox/core/v2/team/TeamFolderActivateError$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/team/TeamFolderActivateError$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 276
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/v2/team/TeamFolderActivateError;->tag()Lcom/dropbox/core/v2/team/TeamFolderActivateError$Tag;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 256
    :pswitch_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 257
    const-string v0, "access_error"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/team/TeamFolderActivateError$Serializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 258
    const-string v0, "access_error"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 259
    sget-object v0, Lcom/dropbox/core/v2/team/TeamFolderAccessError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/TeamFolderAccessError$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/team/TeamFolderActivateError;->access$000(Lcom/dropbox/core/v2/team/TeamFolderActivateError;)Lcom/dropbox/core/v2/team/TeamFolderAccessError;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/team/TeamFolderAccessError$Serializer;->serialize(Lcom/dropbox/core/v2/team/TeamFolderAccessError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 260
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 279
    :goto_0
    return-void

    .line 264
    :pswitch_1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 265
    const-string v0, "status_error"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/team/TeamFolderActivateError$Serializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 266
    const-string v0, "status_error"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 267
    sget-object v0, Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/team/TeamFolderActivateError;->access$100(Lcom/dropbox/core/v2/team/TeamFolderActivateError;)Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError$Serializer;->serialize(Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 268
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 272
    :pswitch_2
    const-string v0, "other"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 254
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
    .line 249
    check-cast p1, Lcom/dropbox/core/v2/team/TeamFolderActivateError;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/team/TeamFolderActivateError$Serializer;->serialize(Lcom/dropbox/core/v2/team/TeamFolderActivateError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
