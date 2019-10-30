.class Lcom/dropbox/core/v2/files/SearchArg$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "SearchArg.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/files/SearchArg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/files/SearchArg;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/files/SearchArg$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 339
    new-instance v0, Lcom/dropbox/core/v2/files/SearchArg$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/SearchArg$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/files/SearchArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/SearchArg$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 338
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/files/SearchArg;
    .locals 12
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "collapsed"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 364
    const/4 v11, 0x0

    .line 365
    .local v11, "tag":Ljava/lang/String;
    if-nez p2, :cond_0

    .line 366
    invoke-static {p1}, Lcom/dropbox/core/v2/files/SearchArg$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 367
    invoke-static {p1}, Lcom/dropbox/core/v2/files/SearchArg$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v11

    .line 369
    :cond_0
    if-nez v11, :cond_a

    .line 370
    const/4 v2, 0x0

    .line 371
    .local v2, "f_path":Ljava/lang/String;
    const/4 v3, 0x0

    .line 372
    .local v3, "f_query":Ljava/lang/String;
    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 373
    .local v9, "f_start":Ljava/lang/Long;
    const-wide/16 v4, 0x64

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 374
    .local v0, "f_maxResults":Ljava/lang/Long;
    sget-object v8, Lcom/dropbox/core/v2/files/SearchMode;->FILENAME:Lcom/dropbox/core/v2/files/SearchMode;

    .line 375
    .local v8, "f_mode":Lcom/dropbox/core/v2/files/SearchMode;
    :goto_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v4

    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v4, v5, :cond_6

    .line 376
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v10

    .line 377
    .local v10, "field":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 378
    const-string v4, "path"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 379
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "f_path":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .restart local v2    # "f_path":Ljava/lang/String;
    goto :goto_0

    .line 381
    :cond_1
    const-string v4, "query"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 382
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "f_query":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .restart local v3    # "f_query":Ljava/lang/String;
    goto :goto_0

    .line 384
    :cond_2
    const-string v4, "start"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 385
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->uInt64()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "f_start":Ljava/lang/Long;
    check-cast v9, Ljava/lang/Long;

    .restart local v9    # "f_start":Ljava/lang/Long;
    goto :goto_0

    .line 387
    :cond_3
    const-string v4, "max_results"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 388
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->uInt64()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "f_maxResults":Ljava/lang/Long;
    check-cast v0, Ljava/lang/Long;

    .restart local v0    # "f_maxResults":Ljava/lang/Long;
    goto :goto_0

    .line 390
    :cond_4
    const-string v4, "mode"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 391
    sget-object v4, Lcom/dropbox/core/v2/files/SearchMode$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/SearchMode$Serializer;

    invoke-virtual {v4, p1}, Lcom/dropbox/core/v2/files/SearchMode$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/files/SearchMode;

    move-result-object v8

    goto :goto_0

    .line 394
    :cond_5
    invoke-static {p1}, Lcom/dropbox/core/v2/files/SearchArg$Serializer;->skipValue(Lcom/fasterxml/jackson/core/JsonParser;)V

    goto :goto_0

    .line 397
    .end local v10    # "field":Ljava/lang/String;
    :cond_6
    if-nez v2, :cond_7

    .line 398
    new-instance v4, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v5, "Required field \"path\" missing."

    invoke-direct {v4, p1, v5}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v4

    .line 400
    :cond_7
    if-nez v3, :cond_8

    .line 401
    new-instance v4, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v5, "Required field \"query\" missing."

    invoke-direct {v4, p1, v5}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v4

    .line 403
    :cond_8
    new-instance v1, Lcom/dropbox/core/v2/files/SearchArg;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-direct/range {v1 .. v8}, Lcom/dropbox/core/v2/files/SearchArg;-><init>(Ljava/lang/String;Ljava/lang/String;JJLcom/dropbox/core/v2/files/SearchMode;)V

    .line 408
    .local v1, "value":Lcom/dropbox/core/v2/files/SearchArg;
    if-nez p2, :cond_9

    .line 409
    invoke-static {p1}, Lcom/dropbox/core/v2/files/SearchArg$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 411
    :cond_9
    return-object v1

    .line 406
    .end local v0    # "f_maxResults":Ljava/lang/Long;
    .end local v1    # "value":Lcom/dropbox/core/v2/files/SearchArg;
    .end local v2    # "f_path":Ljava/lang/String;
    .end local v3    # "f_query":Ljava/lang/String;
    .end local v8    # "f_mode":Lcom/dropbox/core/v2/files/SearchMode;
    .end local v9    # "f_start":Ljava/lang/Long;
    :cond_a
    new-instance v4, Lcom/fasterxml/jackson/core/JsonParseException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No subtype found that matches tag: \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p1, v5}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v4
.end method

.method public bridge synthetic deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 338
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/files/SearchArg$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/files/SearchArg;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/files/SearchArg;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 4
    .param p1, "value"    # Lcom/dropbox/core/v2/files/SearchArg;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p3, "collapse"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 343
    if-nez p3, :cond_0

    .line 344
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 346
    :cond_0
    const-string v0, "path"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 347
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/files/SearchArg;->path:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 348
    const-string v0, "query"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 349
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/files/SearchArg;->query:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 350
    const-string v0, "start"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 351
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->uInt64()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-wide v2, p1, Lcom/dropbox/core/v2/files/SearchArg;->start:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 352
    const-string v0, "max_results"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 353
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->uInt64()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-wide v2, p1, Lcom/dropbox/core/v2/files/SearchArg;->maxResults:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 354
    const-string v0, "mode"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 355
    sget-object v0, Lcom/dropbox/core/v2/files/SearchMode$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/SearchMode$Serializer;

    iget-object v1, p1, Lcom/dropbox/core/v2/files/SearchArg;->mode:Lcom/dropbox/core/v2/files/SearchMode;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/files/SearchMode$Serializer;->serialize(Lcom/dropbox/core/v2/files/SearchMode;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 356
    if-nez p3, :cond_1

    .line 357
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 359
    :cond_1
    return-void
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 338
    check-cast p1, Lcom/dropbox/core/v2/files/SearchArg;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/files/SearchArg$Serializer;->serialize(Lcom/dropbox/core/v2/files/SearchArg;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    return-void
.end method
