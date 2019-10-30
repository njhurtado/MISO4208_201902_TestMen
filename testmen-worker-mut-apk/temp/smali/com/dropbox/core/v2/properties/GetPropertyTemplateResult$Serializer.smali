.class public Lcom/dropbox/core/v2/properties/GetPropertyTemplateResult$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "GetPropertyTemplateResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/properties/GetPropertyTemplateResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/properties/GetPropertyTemplateResult;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/properties/GetPropertyTemplateResult$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 120
    new-instance v0, Lcom/dropbox/core/v2/properties/GetPropertyTemplateResult$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/properties/GetPropertyTemplateResult$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/properties/GetPropertyTemplateResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/properties/GetPropertyTemplateResult$Serializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/properties/GetPropertyTemplateResult;
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
    .line 141
    const/4 v4, 0x0

    .line 142
    .local v4, "tag":Ljava/lang/String;
    if-nez p2, :cond_0

    .line 143
    invoke-static {p1}, Lcom/dropbox/core/v2/properties/GetPropertyTemplateResult$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 144
    invoke-static {p1}, Lcom/dropbox/core/v2/properties/GetPropertyTemplateResult$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v4

    .line 146
    :cond_0
    if-nez v4, :cond_9

    .line 147
    const/4 v2, 0x0

    .line 148
    .local v2, "f_name":Ljava/lang/String;
    const/4 v0, 0x0

    .line 149
    .local v0, "f_description":Ljava/lang/String;
    const/4 v1, 0x0

    .line 150
    .local v1, "f_fields":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/properties/PropertyFieldTemplate;>;"
    :goto_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v6

    sget-object v7, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v6, v7, :cond_4

    .line 151
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v3

    .line 152
    .local v3, "field":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 153
    const-string v6, "name"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 154
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "f_name":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .restart local v2    # "f_name":Ljava/lang/String;
    goto :goto_0

    .line 156
    :cond_1
    const-string v6, "description"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 157
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "f_description":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .restart local v0    # "f_description":Ljava/lang/String;
    goto :goto_0

    .line 159
    :cond_2
    const-string v6, "fields"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 160
    sget-object v6, Lcom/dropbox/core/v2/properties/PropertyFieldTemplate$Serializer;->INSTANCE:Lcom/dropbox/core/v2/properties/PropertyFieldTemplate$Serializer;

    invoke-static {v6}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "f_fields":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/properties/PropertyFieldTemplate;>;"
    check-cast v1, Ljava/util/List;

    .restart local v1    # "f_fields":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/properties/PropertyFieldTemplate;>;"
    goto :goto_0

    .line 163
    :cond_3
    invoke-static {p1}, Lcom/dropbox/core/v2/properties/GetPropertyTemplateResult$Serializer;->skipValue(Lcom/fasterxml/jackson/core/JsonParser;)V

    goto :goto_0

    .line 166
    .end local v3    # "field":Ljava/lang/String;
    :cond_4
    if-nez v2, :cond_5

    .line 167
    new-instance v6, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v7, "Required field \"name\" missing."

    invoke-direct {v6, p1, v7}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v6

    .line 169
    :cond_5
    if-nez v0, :cond_6

    .line 170
    new-instance v6, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v7, "Required field \"description\" missing."

    invoke-direct {v6, p1, v7}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v6

    .line 172
    :cond_6
    if-nez v1, :cond_7

    .line 173
    new-instance v6, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v7, "Required field \"fields\" missing."

    invoke-direct {v6, p1, v7}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v6

    .line 175
    :cond_7
    new-instance v5, Lcom/dropbox/core/v2/properties/GetPropertyTemplateResult;

    invoke-direct {v5, v2, v0, v1}, Lcom/dropbox/core/v2/properties/GetPropertyTemplateResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 180
    .local v5, "value":Lcom/dropbox/core/v2/properties/GetPropertyTemplateResult;
    if-nez p2, :cond_8

    .line 181
    invoke-static {p1}, Lcom/dropbox/core/v2/properties/GetPropertyTemplateResult$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 183
    :cond_8
    return-object v5

    .line 178
    .end local v0    # "f_description":Ljava/lang/String;
    .end local v1    # "f_fields":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/properties/PropertyFieldTemplate;>;"
    .end local v2    # "f_name":Ljava/lang/String;
    .end local v5    # "value":Lcom/dropbox/core/v2/properties/GetPropertyTemplateResult;
    :cond_9
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
    .line 119
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/properties/GetPropertyTemplateResult$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/properties/GetPropertyTemplateResult;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/properties/GetPropertyTemplateResult;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 2
    .param p1, "value"    # Lcom/dropbox/core/v2/properties/GetPropertyTemplateResult;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p3, "collapse"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 124
    if-nez p3, :cond_0

    .line 125
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 127
    :cond_0
    const-string v0, "name"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 128
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/properties/GetPropertyTemplateResult;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 129
    const-string v0, "description"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 130
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/properties/GetPropertyTemplateResult;->description:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 131
    const-string v0, "fields"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 132
    sget-object v0, Lcom/dropbox/core/v2/properties/PropertyFieldTemplate$Serializer;->INSTANCE:Lcom/dropbox/core/v2/properties/PropertyFieldTemplate$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/properties/GetPropertyTemplateResult;->fields:Ljava/util/List;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 133
    if-nez p3, :cond_1

    .line 134
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 136
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
    .line 119
    check-cast p1, Lcom/dropbox/core/v2/properties/GetPropertyTemplateResult;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/properties/GetPropertyTemplateResult$Serializer;->serialize(Lcom/dropbox/core/v2/properties/GetPropertyTemplateResult;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    return-void
.end method
