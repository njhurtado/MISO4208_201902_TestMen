.class Lcom/dropbox/core/v2/team/UpdatePropertyTemplateArg$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "UpdatePropertyTemplateArg.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/team/UpdatePropertyTemplateArg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/team/UpdatePropertyTemplateArg;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/team/UpdatePropertyTemplateArg$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 283
    new-instance v0, Lcom/dropbox/core/v2/team/UpdatePropertyTemplateArg$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/UpdatePropertyTemplateArg$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/team/UpdatePropertyTemplateArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/UpdatePropertyTemplateArg$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 282
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/team/UpdatePropertyTemplateArg;
    .locals 10
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "collapsed"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 312
    const/4 v5, 0x0

    .line 313
    .local v5, "tag":Ljava/lang/String;
    if-nez p2, :cond_0

    .line 314
    invoke-static {p1}, Lcom/dropbox/core/v2/team/UpdatePropertyTemplateArg$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 315
    invoke-static {p1}, Lcom/dropbox/core/v2/team/UpdatePropertyTemplateArg$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v5

    .line 317
    :cond_0
    if-nez v5, :cond_8

    .line 318
    const/4 v3, 0x0

    .line 319
    .local v3, "f_templateId":Ljava/lang/String;
    const/4 v2, 0x0

    .line 320
    .local v2, "f_name":Ljava/lang/String;
    const/4 v1, 0x0

    .line 321
    .local v1, "f_description":Ljava/lang/String;
    const/4 v0, 0x0

    .line 322
    .local v0, "f_addFields":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/properties/PropertyFieldTemplate;>;"
    :goto_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v7

    sget-object v8, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v7, v8, :cond_5

    .line 323
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v4

    .line 324
    .local v4, "field":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 325
    const-string v7, "template_id"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 326
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "f_templateId":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .restart local v3    # "f_templateId":Ljava/lang/String;
    goto :goto_0

    .line 328
    :cond_1
    const-string v7, "name"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 329
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v7

    invoke-static {v7}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "f_name":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .restart local v2    # "f_name":Ljava/lang/String;
    goto :goto_0

    .line 331
    :cond_2
    const-string v7, "description"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 332
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v7

    invoke-static {v7}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "f_description":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .restart local v1    # "f_description":Ljava/lang/String;
    goto :goto_0

    .line 334
    :cond_3
    const-string v7, "add_fields"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 335
    sget-object v7, Lcom/dropbox/core/v2/properties/PropertyFieldTemplate$Serializer;->INSTANCE:Lcom/dropbox/core/v2/properties/PropertyFieldTemplate$Serializer;

    invoke-static {v7}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v7

    invoke-static {v7}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "f_addFields":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/properties/PropertyFieldTemplate;>;"
    check-cast v0, Ljava/util/List;

    .restart local v0    # "f_addFields":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/properties/PropertyFieldTemplate;>;"
    goto :goto_0

    .line 338
    :cond_4
    invoke-static {p1}, Lcom/dropbox/core/v2/team/UpdatePropertyTemplateArg$Serializer;->skipValue(Lcom/fasterxml/jackson/core/JsonParser;)V

    goto :goto_0

    .line 341
    .end local v4    # "field":Ljava/lang/String;
    :cond_5
    if-nez v3, :cond_6

    .line 342
    new-instance v7, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v8, "Required field \"template_id\" missing."

    invoke-direct {v7, p1, v8}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v7

    .line 344
    :cond_6
    new-instance v6, Lcom/dropbox/core/v2/team/UpdatePropertyTemplateArg;

    invoke-direct {v6, v3, v2, v1, v0}, Lcom/dropbox/core/v2/team/UpdatePropertyTemplateArg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 349
    .local v6, "value":Lcom/dropbox/core/v2/team/UpdatePropertyTemplateArg;
    if-nez p2, :cond_7

    .line 350
    invoke-static {p1}, Lcom/dropbox/core/v2/team/UpdatePropertyTemplateArg$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 352
    :cond_7
    return-object v6

    .line 347
    .end local v0    # "f_addFields":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/properties/PropertyFieldTemplate;>;"
    .end local v1    # "f_description":Ljava/lang/String;
    .end local v2    # "f_name":Ljava/lang/String;
    .end local v3    # "f_templateId":Ljava/lang/String;
    .end local v6    # "value":Lcom/dropbox/core/v2/team/UpdatePropertyTemplateArg;
    :cond_8
    new-instance v7, Lcom/fasterxml/jackson/core/JsonParseException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No subtype found that matches tag: \""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, p1, v8}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v7
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
    .line 282
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/team/UpdatePropertyTemplateArg$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/team/UpdatePropertyTemplateArg;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/team/UpdatePropertyTemplateArg;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 2
    .param p1, "value"    # Lcom/dropbox/core/v2/team/UpdatePropertyTemplateArg;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p3, "collapse"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 287
    if-nez p3, :cond_0

    .line 288
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 290
    :cond_0
    const-string v0, "template_id"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 291
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/team/UpdatePropertyTemplateArg;->templateId:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 292
    iget-object v0, p1, Lcom/dropbox/core/v2/team/UpdatePropertyTemplateArg;->name:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 293
    const-string v0, "name"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 294
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/team/UpdatePropertyTemplateArg;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 296
    :cond_1
    iget-object v0, p1, Lcom/dropbox/core/v2/team/UpdatePropertyTemplateArg;->description:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 297
    const-string v0, "description"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 298
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/team/UpdatePropertyTemplateArg;->description:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 300
    :cond_2
    iget-object v0, p1, Lcom/dropbox/core/v2/team/UpdatePropertyTemplateArg;->addFields:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 301
    const-string v0, "add_fields"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 302
    sget-object v0, Lcom/dropbox/core/v2/properties/PropertyFieldTemplate$Serializer;->INSTANCE:Lcom/dropbox/core/v2/properties/PropertyFieldTemplate$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/team/UpdatePropertyTemplateArg;->addFields:Ljava/util/List;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 304
    :cond_3
    if-nez p3, :cond_4

    .line 305
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 307
    :cond_4
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
    .line 282
    check-cast p1, Lcom/dropbox/core/v2/team/UpdatePropertyTemplateArg;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/team/UpdatePropertyTemplateArg$Serializer;->serialize(Lcom/dropbox/core/v2/team/UpdatePropertyTemplateArg;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    return-void
.end method
