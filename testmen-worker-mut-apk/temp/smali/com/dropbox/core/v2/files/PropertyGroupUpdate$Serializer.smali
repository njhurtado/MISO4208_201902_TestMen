.class Lcom/dropbox/core/v2/files/PropertyGroupUpdate$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "PropertyGroupUpdate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/files/PropertyGroupUpdate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/files/PropertyGroupUpdate;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/files/PropertyGroupUpdate$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 266
    new-instance v0, Lcom/dropbox/core/v2/files/PropertyGroupUpdate$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/PropertyGroupUpdate$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/files/PropertyGroupUpdate$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/PropertyGroupUpdate$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 265
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/files/PropertyGroupUpdate;
    .locals 9
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "collapsed"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 291
    const/4 v4, 0x0

    .line 292
    .local v4, "tag":Ljava/lang/String;
    if-nez p2, :cond_0

    .line 293
    invoke-static {p1}, Lcom/dropbox/core/v2/files/PropertyGroupUpdate$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 294
    invoke-static {p1}, Lcom/dropbox/core/v2/files/PropertyGroupUpdate$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v4

    .line 296
    :cond_0
    if-nez v4, :cond_7

    .line 297
    const/4 v2, 0x0

    .line 298
    .local v2, "f_templateId":Ljava/lang/String;
    const/4 v0, 0x0

    .line 299
    .local v0, "f_addOrUpdateFields":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/properties/PropertyField;>;"
    const/4 v1, 0x0

    .line 300
    .local v1, "f_removeFields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v6

    sget-object v7, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v6, v7, :cond_4

    .line 301
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v3

    .line 302
    .local v3, "field":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 303
    const-string v6, "template_id"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 304
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "f_templateId":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .restart local v2    # "f_templateId":Ljava/lang/String;
    goto :goto_0

    .line 306
    :cond_1
    const-string v6, "add_or_update_fields"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 307
    sget-object v6, Lcom/dropbox/core/v2/properties/PropertyField$Serializer;->INSTANCE:Lcom/dropbox/core/v2/properties/PropertyField$Serializer;

    invoke-static {v6}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v6

    invoke-static {v6}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "f_addOrUpdateFields":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/properties/PropertyField;>;"
    check-cast v0, Ljava/util/List;

    .restart local v0    # "f_addOrUpdateFields":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/properties/PropertyField;>;"
    goto :goto_0

    .line 309
    :cond_2
    const-string v6, "remove_fields"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 310
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v6

    invoke-static {v6}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v6

    invoke-static {v6}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "f_removeFields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    check-cast v1, Ljava/util/List;

    .restart local v1    # "f_removeFields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_0

    .line 313
    :cond_3
    invoke-static {p1}, Lcom/dropbox/core/v2/files/PropertyGroupUpdate$Serializer;->skipValue(Lcom/fasterxml/jackson/core/JsonParser;)V

    goto :goto_0

    .line 316
    .end local v3    # "field":Ljava/lang/String;
    :cond_4
    if-nez v2, :cond_5

    .line 317
    new-instance v6, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v7, "Required field \"template_id\" missing."

    invoke-direct {v6, p1, v7}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v6

    .line 319
    :cond_5
    new-instance v5, Lcom/dropbox/core/v2/files/PropertyGroupUpdate;

    invoke-direct {v5, v2, v0, v1}, Lcom/dropbox/core/v2/files/PropertyGroupUpdate;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 324
    .local v5, "value":Lcom/dropbox/core/v2/files/PropertyGroupUpdate;
    if-nez p2, :cond_6

    .line 325
    invoke-static {p1}, Lcom/dropbox/core/v2/files/PropertyGroupUpdate$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 327
    :cond_6
    return-object v5

    .line 322
    .end local v0    # "f_addOrUpdateFields":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/properties/PropertyField;>;"
    .end local v1    # "f_removeFields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "f_templateId":Ljava/lang/String;
    .end local v5    # "value":Lcom/dropbox/core/v2/files/PropertyGroupUpdate;
    :cond_7
    new-instance v6, Lcom/fasterxml/jackson/core/JsonParseException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No subtype found that matches tag: \""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, p1, v7}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v6
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
    .line 265
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/files/PropertyGroupUpdate$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/files/PropertyGroupUpdate;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/files/PropertyGroupUpdate;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 2
    .param p1, "value"    # Lcom/dropbox/core/v2/files/PropertyGroupUpdate;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p3, "collapse"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 270
    if-nez p3, :cond_0

    .line 271
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 273
    :cond_0
    const-string v0, "template_id"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 274
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/files/PropertyGroupUpdate;->templateId:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 275
    iget-object v0, p1, Lcom/dropbox/core/v2/files/PropertyGroupUpdate;->addOrUpdateFields:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 276
    const-string v0, "add_or_update_fields"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 277
    sget-object v0, Lcom/dropbox/core/v2/properties/PropertyField$Serializer;->INSTANCE:Lcom/dropbox/core/v2/properties/PropertyField$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/files/PropertyGroupUpdate;->addOrUpdateFields:Ljava/util/List;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 279
    :cond_1
    iget-object v0, p1, Lcom/dropbox/core/v2/files/PropertyGroupUpdate;->removeFields:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 280
    const-string v0, "remove_fields"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 281
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/files/PropertyGroupUpdate;->removeFields:Ljava/util/List;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 283
    :cond_2
    if-nez p3, :cond_3

    .line 284
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 286
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
    .line 265
    check-cast p1, Lcom/dropbox/core/v2/files/PropertyGroupUpdate;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/files/PropertyGroupUpdate$Serializer;->serialize(Lcom/dropbox/core/v2/files/PropertyGroupUpdate;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    return-void
.end method
