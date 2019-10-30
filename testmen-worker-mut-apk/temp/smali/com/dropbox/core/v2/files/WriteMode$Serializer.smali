.class Lcom/dropbox/core/v2/files/WriteMode$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "WriteMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/files/WriteMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/files/WriteMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/files/WriteMode$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 257
    new-instance v0, Lcom/dropbox/core/v2/files/WriteMode$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/WriteMode$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/files/WriteMode$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/WriteMode$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 256
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/files/WriteMode;
    .locals 7
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 289
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v4

    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v4, v5, :cond_0

    .line 290
    const/4 v0, 0x1

    .line 291
    .local v0, "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/files/WriteMode$Serializer;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v2

    .line 292
    .local v2, "tag":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 299
    :goto_0
    if-nez v2, :cond_1

    .line 300
    new-instance v4, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v5, "Required field missing: .tag"

    invoke-direct {v4, p1, v5}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v4

    .line 295
    .end local v0    # "collapsed":Z
    .end local v2    # "tag":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    .line 296
    .restart local v0    # "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/files/WriteMode$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 297
    invoke-static {p1}, Lcom/dropbox/core/v2/files/WriteMode$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "tag":Ljava/lang/String;
    goto :goto_0

    .line 302
    :cond_1
    const-string v4, "add"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 303
    sget-object v3, Lcom/dropbox/core/v2/files/WriteMode;->ADD:Lcom/dropbox/core/v2/files/WriteMode;

    .line 317
    .local v3, "value":Lcom/dropbox/core/v2/files/WriteMode;
    :goto_1
    if-nez v0, :cond_2

    .line 318
    invoke-static {p1}, Lcom/dropbox/core/v2/files/WriteMode$Serializer;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 319
    invoke-static {p1}, Lcom/dropbox/core/v2/files/WriteMode$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 321
    :cond_2
    return-object v3

    .line 305
    .end local v3    # "value":Lcom/dropbox/core/v2/files/WriteMode;
    :cond_3
    const-string v4, "overwrite"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 306
    sget-object v3, Lcom/dropbox/core/v2/files/WriteMode;->OVERWRITE:Lcom/dropbox/core/v2/files/WriteMode;

    .restart local v3    # "value":Lcom/dropbox/core/v2/files/WriteMode;
    goto :goto_1

    .line 308
    .end local v3    # "value":Lcom/dropbox/core/v2/files/WriteMode;
    :cond_4
    const-string v4, "update"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 309
    const/4 v1, 0x0

    .line 310
    .local v1, "fieldValue":Ljava/lang/String;
    const-string v4, "update"

    invoke-static {v4, p1}, Lcom/dropbox/core/v2/files/WriteMode$Serializer;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 311
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "fieldValue":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 312
    .restart local v1    # "fieldValue":Ljava/lang/String;
    invoke-static {v1}, Lcom/dropbox/core/v2/files/WriteMode;->update(Ljava/lang/String;)Lcom/dropbox/core/v2/files/WriteMode;

    move-result-object v3

    .line 313
    .restart local v3    # "value":Lcom/dropbox/core/v2/files/WriteMode;
    goto :goto_1

    .line 315
    .end local v1    # "fieldValue":Ljava/lang/String;
    .end local v3    # "value":Lcom/dropbox/core/v2/files/WriteMode;
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
    .line 256
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/files/WriteMode$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/files/WriteMode;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/files/WriteMode;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 3
    .param p1, "value"    # Lcom/dropbox/core/v2/files/WriteMode;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 261
    sget-object v0, Lcom/dropbox/core/v2/files/WriteMode$1;->$SwitchMap$com$dropbox$core$v2$files$WriteMode$Tag:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/files/WriteMode;->tag()Lcom/dropbox/core/v2/files/WriteMode$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/files/WriteMode$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 279
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/v2/files/WriteMode;->tag()Lcom/dropbox/core/v2/files/WriteMode$Tag;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 263
    :pswitch_0
    const-string v0, "add"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    .line 282
    :goto_0
    return-void

    .line 267
    :pswitch_1
    const-string v0, "overwrite"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 271
    :pswitch_2
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 272
    const-string v0, "update"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/files/WriteMode$Serializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 273
    const-string v0, "update"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 274
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {p1}, Lcom/dropbox/core/v2/files/WriteMode;->access$000(Lcom/dropbox/core/v2/files/WriteMode;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 275
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 261
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
    .line 256
    check-cast p1, Lcom/dropbox/core/v2/files/WriteMode;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/files/WriteMode$Serializer;->serialize(Lcom/dropbox/core/v2/files/WriteMode;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
