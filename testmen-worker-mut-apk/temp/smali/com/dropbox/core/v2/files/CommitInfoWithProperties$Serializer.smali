.class Lcom/dropbox/core/v2/files/CommitInfoWithProperties$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "CommitInfoWithProperties.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/files/CommitInfoWithProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/files/CommitInfoWithProperties;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/files/CommitInfoWithProperties$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 336
    new-instance v0, Lcom/dropbox/core/v2/files/CommitInfoWithProperties$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/CommitInfoWithProperties$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/files/CommitInfoWithProperties$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/CommitInfoWithProperties$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 335
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/files/CommitInfoWithProperties;
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
    const/4 v3, 0x0

    .line 367
    const/4 v10, 0x0

    .line 368
    .local v10, "tag":Ljava/lang/String;
    if-nez p2, :cond_0

    .line 369
    invoke-static {p1}, Lcom/dropbox/core/v2/files/CommitInfoWithProperties$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 370
    invoke-static {p1}, Lcom/dropbox/core/v2/files/CommitInfoWithProperties$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v10

    .line 372
    :cond_0
    if-nez v10, :cond_a

    .line 373
    const/4 v1, 0x0

    .line 374
    .local v1, "f_path":Ljava/lang/String;
    sget-object v2, Lcom/dropbox/core/v2/files/WriteMode;->ADD:Lcom/dropbox/core/v2/files/WriteMode;

    .line 375
    .local v2, "f_mode":Lcom/dropbox/core/v2/files/WriteMode;
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 376
    .local v7, "f_autorename":Ljava/lang/Boolean;
    const/4 v4, 0x0

    .line 377
    .local v4, "f_clientModified":Ljava/util/Date;
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 378
    .local v8, "f_mute":Ljava/lang/Boolean;
    const/4 v6, 0x0

    .line 379
    .local v6, "f_propertyGroups":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/properties/PropertyGroup;>;"
    :goto_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v3, v5, :cond_7

    .line 380
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v9

    .line 381
    .local v9, "field":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 382
    const-string v3, "path"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 383
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "f_path":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .restart local v1    # "f_path":Ljava/lang/String;
    goto :goto_0

    .line 385
    :cond_1
    const-string v3, "mode"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 386
    sget-object v3, Lcom/dropbox/core/v2/files/WriteMode$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/WriteMode$Serializer;

    invoke-virtual {v3, p1}, Lcom/dropbox/core/v2/files/WriteMode$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/files/WriteMode;

    move-result-object v2

    goto :goto_0

    .line 388
    :cond_2
    const-string v3, "autorename"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 389
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->boolean_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "f_autorename":Ljava/lang/Boolean;
    check-cast v7, Ljava/lang/Boolean;

    .restart local v7    # "f_autorename":Ljava/lang/Boolean;
    goto :goto_0

    .line 391
    :cond_3
    const-string v3, "client_modified"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 392
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->timestamp()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v3

    invoke-static {v3}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "f_clientModified":Ljava/util/Date;
    check-cast v4, Ljava/util/Date;

    .restart local v4    # "f_clientModified":Ljava/util/Date;
    goto :goto_0

    .line 394
    :cond_4
    const-string v3, "mute"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 395
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->boolean_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "f_mute":Ljava/lang/Boolean;
    check-cast v8, Ljava/lang/Boolean;

    .restart local v8    # "f_mute":Ljava/lang/Boolean;
    goto :goto_0

    .line 397
    :cond_5
    const-string v3, "property_groups"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 398
    sget-object v3, Lcom/dropbox/core/v2/properties/PropertyGroup$Serializer;->INSTANCE:Lcom/dropbox/core/v2/properties/PropertyGroup$Serializer;

    invoke-static {v3}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v3

    invoke-static {v3}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "f_propertyGroups":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/properties/PropertyGroup;>;"
    check-cast v6, Ljava/util/List;

    .restart local v6    # "f_propertyGroups":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/properties/PropertyGroup;>;"
    goto/16 :goto_0

    .line 401
    :cond_6
    invoke-static {p1}, Lcom/dropbox/core/v2/files/CommitInfoWithProperties$Serializer;->skipValue(Lcom/fasterxml/jackson/core/JsonParser;)V

    goto/16 :goto_0

    .line 404
    .end local v9    # "field":Ljava/lang/String;
    :cond_7
    if-nez v1, :cond_8

    .line 405
    new-instance v3, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v5, "Required field \"path\" missing."

    invoke-direct {v3, p1, v5}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v3

    .line 407
    :cond_8
    new-instance v0, Lcom/dropbox/core/v2/files/CommitInfoWithProperties;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-direct/range {v0 .. v6}, Lcom/dropbox/core/v2/files/CommitInfoWithProperties;-><init>(Ljava/lang/String;Lcom/dropbox/core/v2/files/WriteMode;ZLjava/util/Date;ZLjava/util/List;)V

    .line 412
    .local v0, "value":Lcom/dropbox/core/v2/files/CommitInfoWithProperties;
    if-nez p2, :cond_9

    .line 413
    invoke-static {p1}, Lcom/dropbox/core/v2/files/CommitInfoWithProperties$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 415
    :cond_9
    return-object v0

    .line 410
    .end local v0    # "value":Lcom/dropbox/core/v2/files/CommitInfoWithProperties;
    .end local v1    # "f_path":Ljava/lang/String;
    .end local v2    # "f_mode":Lcom/dropbox/core/v2/files/WriteMode;
    .end local v4    # "f_clientModified":Ljava/util/Date;
    .end local v6    # "f_propertyGroups":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/properties/PropertyGroup;>;"
    .end local v7    # "f_autorename":Ljava/lang/Boolean;
    .end local v8    # "f_mute":Ljava/lang/Boolean;
    :cond_a
    new-instance v3, Lcom/fasterxml/jackson/core/JsonParseException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "No subtype found that matches tag: \""

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v11, "\""

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, p1, v5}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v3
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
    .line 335
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/files/CommitInfoWithProperties$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/files/CommitInfoWithProperties;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/files/CommitInfoWithProperties;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 2
    .param p1, "value"    # Lcom/dropbox/core/v2/files/CommitInfoWithProperties;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p3, "collapse"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 340
    if-nez p3, :cond_0

    .line 341
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 343
    :cond_0
    const-string v0, "path"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 344
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/files/CommitInfoWithProperties;->path:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 345
    const-string v0, "mode"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 346
    sget-object v0, Lcom/dropbox/core/v2/files/WriteMode$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/WriteMode$Serializer;

    iget-object v1, p1, Lcom/dropbox/core/v2/files/CommitInfoWithProperties;->mode:Lcom/dropbox/core/v2/files/WriteMode;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/files/WriteMode$Serializer;->serialize(Lcom/dropbox/core/v2/files/WriteMode;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 347
    const-string v0, "autorename"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 348
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->boolean_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-boolean v1, p1, Lcom/dropbox/core/v2/files/CommitInfoWithProperties;->autorename:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 349
    iget-object v0, p1, Lcom/dropbox/core/v2/files/CommitInfoWithProperties;->clientModified:Ljava/util/Date;

    if-eqz v0, :cond_1

    .line 350
    const-string v0, "client_modified"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 351
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->timestamp()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/files/CommitInfoWithProperties;->clientModified:Ljava/util/Date;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 353
    :cond_1
    const-string v0, "mute"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 354
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->boolean_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-boolean v1, p1, Lcom/dropbox/core/v2/files/CommitInfoWithProperties;->mute:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 355
    iget-object v0, p1, Lcom/dropbox/core/v2/files/CommitInfoWithProperties;->propertyGroups:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 356
    const-string v0, "property_groups"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 357
    sget-object v0, Lcom/dropbox/core/v2/properties/PropertyGroup$Serializer;->INSTANCE:Lcom/dropbox/core/v2/properties/PropertyGroup$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/files/CommitInfoWithProperties;->propertyGroups:Ljava/util/List;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 359
    :cond_2
    if-nez p3, :cond_3

    .line 360
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 362
    :cond_3
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
    .line 335
    check-cast p1, Lcom/dropbox/core/v2/files/CommitInfoWithProperties;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/files/CommitInfoWithProperties$Serializer;->serialize(Lcom/dropbox/core/v2/files/CommitInfoWithProperties;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    return-void
.end method
