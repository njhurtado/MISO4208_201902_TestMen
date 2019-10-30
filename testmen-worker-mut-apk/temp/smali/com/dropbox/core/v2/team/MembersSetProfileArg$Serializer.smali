.class Lcom/dropbox/core/v2/team/MembersSetProfileArg$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "MembersSetProfileArg.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/team/MembersSetProfileArg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/team/MembersSetProfileArg;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/team/MembersSetProfileArg$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 399
    new-instance v0, Lcom/dropbox/core/v2/team/MembersSetProfileArg$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/MembersSetProfileArg$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/team/MembersSetProfileArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/MembersSetProfileArg$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 398
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/team/MembersSetProfileArg;
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
    .line 436
    const/4 v8, 0x0

    .line 437
    .local v8, "tag":Ljava/lang/String;
    if-nez p2, :cond_0

    .line 438
    invoke-static {p1}, Lcom/dropbox/core/v2/team/MembersSetProfileArg$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 439
    invoke-static {p1}, Lcom/dropbox/core/v2/team/MembersSetProfileArg$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v8

    .line 441
    :cond_0
    if-nez v8, :cond_a

    .line 442
    const/4 v1, 0x0

    .line 443
    .local v1, "f_user":Lcom/dropbox/core/v2/team/UserSelectorArg;
    const/4 v2, 0x0

    .line 444
    .local v2, "f_newEmail":Ljava/lang/String;
    const/4 v3, 0x0

    .line 445
    .local v3, "f_newExternalId":Ljava/lang/String;
    const/4 v4, 0x0

    .line 446
    .local v4, "f_newGivenName":Ljava/lang/String;
    const/4 v5, 0x0

    .line 447
    .local v5, "f_newSurname":Ljava/lang/String;
    const/4 v6, 0x0

    .line 448
    .local v6, "f_newPersistentId":Ljava/lang/String;
    :goto_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v9

    sget-object v10, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v9, v10, :cond_7

    .line 449
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v7

    .line 450
    .local v7, "field":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 451
    const-string v9, "user"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 452
    sget-object v9, Lcom/dropbox/core/v2/team/UserSelectorArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/UserSelectorArg$Serializer;

    invoke-virtual {v9, p1}, Lcom/dropbox/core/v2/team/UserSelectorArg$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/team/UserSelectorArg;

    move-result-object v1

    goto :goto_0

    .line 454
    :cond_1
    const-string v9, "new_email"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 455
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v9

    invoke-static {v9}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v9

    invoke-virtual {v9, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "f_newEmail":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .restart local v2    # "f_newEmail":Ljava/lang/String;
    goto :goto_0

    .line 457
    :cond_2
    const-string v9, "new_external_id"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 458
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v9

    invoke-static {v9}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v9

    invoke-virtual {v9, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "f_newExternalId":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .restart local v3    # "f_newExternalId":Ljava/lang/String;
    goto :goto_0

    .line 460
    :cond_3
    const-string v9, "new_given_name"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 461
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v9

    invoke-static {v9}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v9

    invoke-virtual {v9, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "f_newGivenName":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .restart local v4    # "f_newGivenName":Ljava/lang/String;
    goto :goto_0

    .line 463
    :cond_4
    const-string v9, "new_surname"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 464
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v9

    invoke-static {v9}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v9

    invoke-virtual {v9, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "f_newSurname":Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .restart local v5    # "f_newSurname":Ljava/lang/String;
    goto :goto_0

    .line 466
    :cond_5
    const-string v9, "new_persistent_id"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 467
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v9

    invoke-static {v9}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v9

    invoke-virtual {v9, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "f_newPersistentId":Ljava/lang/String;
    check-cast v6, Ljava/lang/String;

    .restart local v6    # "f_newPersistentId":Ljava/lang/String;
    goto/16 :goto_0

    .line 470
    :cond_6
    invoke-static {p1}, Lcom/dropbox/core/v2/team/MembersSetProfileArg$Serializer;->skipValue(Lcom/fasterxml/jackson/core/JsonParser;)V

    goto/16 :goto_0

    .line 473
    .end local v7    # "field":Ljava/lang/String;
    :cond_7
    if-nez v1, :cond_8

    .line 474
    new-instance v9, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v10, "Required field \"user\" missing."

    invoke-direct {v9, p1, v10}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v9

    .line 476
    :cond_8
    new-instance v0, Lcom/dropbox/core/v2/team/MembersSetProfileArg;

    invoke-direct/range {v0 .. v6}, Lcom/dropbox/core/v2/team/MembersSetProfileArg;-><init>(Lcom/dropbox/core/v2/team/UserSelectorArg;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    .local v0, "value":Lcom/dropbox/core/v2/team/MembersSetProfileArg;
    if-nez p2, :cond_9

    .line 482
    invoke-static {p1}, Lcom/dropbox/core/v2/team/MembersSetProfileArg$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 484
    :cond_9
    return-object v0

    .line 479
    .end local v0    # "value":Lcom/dropbox/core/v2/team/MembersSetProfileArg;
    .end local v1    # "f_user":Lcom/dropbox/core/v2/team/UserSelectorArg;
    .end local v2    # "f_newEmail":Ljava/lang/String;
    .end local v3    # "f_newExternalId":Ljava/lang/String;
    .end local v4    # "f_newGivenName":Ljava/lang/String;
    .end local v5    # "f_newSurname":Ljava/lang/String;
    .end local v6    # "f_newPersistentId":Ljava/lang/String;
    :cond_a
    new-instance v9, Lcom/fasterxml/jackson/core/JsonParseException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "No subtype found that matches tag: \""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, p1, v10}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v9
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
    .line 398
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/team/MembersSetProfileArg$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/team/MembersSetProfileArg;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/team/MembersSetProfileArg;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 2
    .param p1, "value"    # Lcom/dropbox/core/v2/team/MembersSetProfileArg;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p3, "collapse"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 403
    if-nez p3, :cond_0

    .line 404
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 406
    :cond_0
    const-string v0, "user"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 407
    sget-object v0, Lcom/dropbox/core/v2/team/UserSelectorArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/UserSelectorArg$Serializer;

    iget-object v1, p1, Lcom/dropbox/core/v2/team/MembersSetProfileArg;->user:Lcom/dropbox/core/v2/team/UserSelectorArg;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/team/UserSelectorArg$Serializer;->serialize(Lcom/dropbox/core/v2/team/UserSelectorArg;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 408
    iget-object v0, p1, Lcom/dropbox/core/v2/team/MembersSetProfileArg;->newEmail:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 409
    const-string v0, "new_email"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 410
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/team/MembersSetProfileArg;->newEmail:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 412
    :cond_1
    iget-object v0, p1, Lcom/dropbox/core/v2/team/MembersSetProfileArg;->newExternalId:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 413
    const-string v0, "new_external_id"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 414
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/team/MembersSetProfileArg;->newExternalId:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 416
    :cond_2
    iget-object v0, p1, Lcom/dropbox/core/v2/team/MembersSetProfileArg;->newGivenName:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 417
    const-string v0, "new_given_name"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 418
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/team/MembersSetProfileArg;->newGivenName:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 420
    :cond_3
    iget-object v0, p1, Lcom/dropbox/core/v2/team/MembersSetProfileArg;->newSurname:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 421
    const-string v0, "new_surname"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 422
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/team/MembersSetProfileArg;->newSurname:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 424
    :cond_4
    iget-object v0, p1, Lcom/dropbox/core/v2/team/MembersSetProfileArg;->newPersistentId:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 425
    const-string v0, "new_persistent_id"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 426
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/team/MembersSetProfileArg;->newPersistentId:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 428
    :cond_5
    if-nez p3, :cond_6

    .line 429
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 431
    :cond_6
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
    .line 398
    check-cast p1, Lcom/dropbox/core/v2/team/MembersSetProfileArg;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/team/MembersSetProfileArg$Serializer;->serialize(Lcom/dropbox/core/v2/team/MembersSetProfileArg;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    return-void
.end method
