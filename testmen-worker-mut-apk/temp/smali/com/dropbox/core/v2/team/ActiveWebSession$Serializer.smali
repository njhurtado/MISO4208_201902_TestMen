.class Lcom/dropbox/core/v2/team/ActiveWebSession$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "ActiveWebSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/team/ActiveWebSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/team/ActiveWebSession;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/team/ActiveWebSession$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 320
    new-instance v0, Lcom/dropbox/core/v2/team/ActiveWebSession$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/ActiveWebSession$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/team/ActiveWebSession$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/ActiveWebSession$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 319
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/team/ActiveWebSession;
    .locals 14
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "collapsed"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 359
    const/4 v10, 0x0

    .line 360
    .local v10, "tag":Ljava/lang/String;
    if-nez p2, :cond_0

    .line 361
    invoke-static {p1}, Lcom/dropbox/core/v2/team/ActiveWebSession$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 362
    invoke-static {p1}, Lcom/dropbox/core/v2/team/ActiveWebSession$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v10

    .line 364
    :cond_0
    if-nez v10, :cond_f

    .line 365
    const/4 v1, 0x0

    .line 366
    .local v1, "f_sessionId":Ljava/lang/String;
    const/4 v2, 0x0

    .line 367
    .local v2, "f_userAgent":Ljava/lang/String;
    const/4 v3, 0x0

    .line 368
    .local v3, "f_os":Ljava/lang/String;
    const/4 v4, 0x0

    .line 369
    .local v4, "f_browser":Ljava/lang/String;
    const/4 v5, 0x0

    .line 370
    .local v5, "f_ipAddress":Ljava/lang/String;
    const/4 v6, 0x0

    .line 371
    .local v6, "f_country":Ljava/lang/String;
    const/4 v7, 0x0

    .line 372
    .local v7, "f_created":Ljava/util/Date;
    const/4 v8, 0x0

    .line 373
    .local v8, "f_updated":Ljava/util/Date;
    :goto_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v11

    sget-object v12, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v11, v12, :cond_9

    .line 374
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v9

    .line 375
    .local v9, "field":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 376
    const-string v11, "session_id"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 377
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v11

    invoke-virtual {v11, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "f_sessionId":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .restart local v1    # "f_sessionId":Ljava/lang/String;
    goto :goto_0

    .line 379
    :cond_1
    const-string v11, "user_agent"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 380
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v11

    invoke-virtual {v11, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "f_userAgent":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .restart local v2    # "f_userAgent":Ljava/lang/String;
    goto :goto_0

    .line 382
    :cond_2
    const-string v11, "os"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 383
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v11

    invoke-virtual {v11, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "f_os":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .restart local v3    # "f_os":Ljava/lang/String;
    goto :goto_0

    .line 385
    :cond_3
    const-string v11, "browser"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 386
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v11

    invoke-virtual {v11, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "f_browser":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .restart local v4    # "f_browser":Ljava/lang/String;
    goto :goto_0

    .line 388
    :cond_4
    const-string v11, "ip_address"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 389
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v11

    invoke-static {v11}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v11

    invoke-virtual {v11, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "f_ipAddress":Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .restart local v5    # "f_ipAddress":Ljava/lang/String;
    goto :goto_0

    .line 391
    :cond_5
    const-string v11, "country"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 392
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v11

    invoke-static {v11}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v11

    invoke-virtual {v11, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "f_country":Ljava/lang/String;
    check-cast v6, Ljava/lang/String;

    .restart local v6    # "f_country":Ljava/lang/String;
    goto/16 :goto_0

    .line 394
    :cond_6
    const-string v11, "created"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 395
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->timestamp()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v11

    invoke-static {v11}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v11

    invoke-virtual {v11, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "f_created":Ljava/util/Date;
    check-cast v7, Ljava/util/Date;

    .restart local v7    # "f_created":Ljava/util/Date;
    goto/16 :goto_0

    .line 397
    :cond_7
    const-string v11, "updated"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 398
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->timestamp()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v11

    invoke-static {v11}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v11

    invoke-virtual {v11, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "f_updated":Ljava/util/Date;
    check-cast v8, Ljava/util/Date;

    .restart local v8    # "f_updated":Ljava/util/Date;
    goto/16 :goto_0

    .line 401
    :cond_8
    invoke-static {p1}, Lcom/dropbox/core/v2/team/ActiveWebSession$Serializer;->skipValue(Lcom/fasterxml/jackson/core/JsonParser;)V

    goto/16 :goto_0

    .line 404
    .end local v9    # "field":Ljava/lang/String;
    :cond_9
    if-nez v1, :cond_a

    .line 405
    new-instance v11, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v12, "Required field \"session_id\" missing."

    invoke-direct {v11, p1, v12}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v11

    .line 407
    :cond_a
    if-nez v2, :cond_b

    .line 408
    new-instance v11, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v12, "Required field \"user_agent\" missing."

    invoke-direct {v11, p1, v12}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v11

    .line 410
    :cond_b
    if-nez v3, :cond_c

    .line 411
    new-instance v11, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v12, "Required field \"os\" missing."

    invoke-direct {v11, p1, v12}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v11

    .line 413
    :cond_c
    if-nez v4, :cond_d

    .line 414
    new-instance v11, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v12, "Required field \"browser\" missing."

    invoke-direct {v11, p1, v12}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v11

    .line 416
    :cond_d
    new-instance v0, Lcom/dropbox/core/v2/team/ActiveWebSession;

    invoke-direct/range {v0 .. v8}, Lcom/dropbox/core/v2/team/ActiveWebSession;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)V

    .line 421
    .local v0, "value":Lcom/dropbox/core/v2/team/ActiveWebSession;
    if-nez p2, :cond_e

    .line 422
    invoke-static {p1}, Lcom/dropbox/core/v2/team/ActiveWebSession$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 424
    :cond_e
    return-object v0

    .line 419
    .end local v0    # "value":Lcom/dropbox/core/v2/team/ActiveWebSession;
    .end local v1    # "f_sessionId":Ljava/lang/String;
    .end local v2    # "f_userAgent":Ljava/lang/String;
    .end local v3    # "f_os":Ljava/lang/String;
    .end local v4    # "f_browser":Ljava/lang/String;
    .end local v5    # "f_ipAddress":Ljava/lang/String;
    .end local v6    # "f_country":Ljava/lang/String;
    .end local v7    # "f_created":Ljava/util/Date;
    .end local v8    # "f_updated":Ljava/util/Date;
    :cond_f
    new-instance v11, Lcom/fasterxml/jackson/core/JsonParseException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "No subtype found that matches tag: \""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, p1, v12}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v11
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
    .line 319
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/team/ActiveWebSession$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/team/ActiveWebSession;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/team/ActiveWebSession;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 2
    .param p1, "value"    # Lcom/dropbox/core/v2/team/ActiveWebSession;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p3, "collapse"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 324
    if-nez p3, :cond_0

    .line 325
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 327
    :cond_0
    const-string v0, "session_id"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 328
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/team/ActiveWebSession;->sessionId:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 329
    const-string v0, "user_agent"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 330
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/team/ActiveWebSession;->userAgent:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 331
    const-string v0, "os"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 332
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/team/ActiveWebSession;->os:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 333
    const-string v0, "browser"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 334
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/team/ActiveWebSession;->browser:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 335
    iget-object v0, p1, Lcom/dropbox/core/v2/team/ActiveWebSession;->ipAddress:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 336
    const-string v0, "ip_address"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 337
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/team/ActiveWebSession;->ipAddress:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 339
    :cond_1
    iget-object v0, p1, Lcom/dropbox/core/v2/team/ActiveWebSession;->country:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 340
    const-string v0, "country"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 341
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/team/ActiveWebSession;->country:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 343
    :cond_2
    iget-object v0, p1, Lcom/dropbox/core/v2/team/ActiveWebSession;->created:Ljava/util/Date;

    if-eqz v0, :cond_3

    .line 344
    const-string v0, "created"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 345
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->timestamp()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/team/ActiveWebSession;->created:Ljava/util/Date;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 347
    :cond_3
    iget-object v0, p1, Lcom/dropbox/core/v2/team/ActiveWebSession;->updated:Ljava/util/Date;

    if-eqz v0, :cond_4

    .line 348
    const-string v0, "updated"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 349
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->timestamp()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/team/ActiveWebSession;->updated:Ljava/util/Date;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 351
    :cond_4
    if-nez p3, :cond_5

    .line 352
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 354
    :cond_5
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
    .line 319
    check-cast p1, Lcom/dropbox/core/v2/team/ActiveWebSession;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/team/ActiveWebSession$Serializer;->serialize(Lcom/dropbox/core/v2/team/ActiveWebSession;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    return-void
.end method
