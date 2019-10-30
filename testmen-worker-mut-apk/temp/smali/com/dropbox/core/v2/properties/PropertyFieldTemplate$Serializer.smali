.class public Lcom/dropbox/core/v2/properties/PropertyFieldTemplate$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "PropertyFieldTemplate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/properties/PropertyFieldTemplate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/properties/PropertyFieldTemplate;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/properties/PropertyFieldTemplate$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 140
    new-instance v0, Lcom/dropbox/core/v2/properties/PropertyFieldTemplate$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/properties/PropertyFieldTemplate$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/properties/PropertyFieldTemplate$Serializer;->INSTANCE:Lcom/dropbox/core/v2/properties/PropertyFieldTemplate$Serializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/properties/PropertyFieldTemplate;
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
    .line 161
    const/4 v4, 0x0

    .line 162
    .local v4, "tag":Ljava/lang/String;
    if-nez p2, :cond_0

    .line 163
    invoke-static {p1}, Lcom/dropbox/core/v2/properties/PropertyFieldTemplate$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 164
    invoke-static {p1}, Lcom/dropbox/core/v2/properties/PropertyFieldTemplate$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v4

    .line 166
    :cond_0
    if-nez v4, :cond_9

    .line 167
    const/4 v1, 0x0

    .line 168
    .local v1, "f_name":Ljava/lang/String;
    const/4 v0, 0x0

    .line 169
    .local v0, "f_description":Ljava/lang/String;
    const/4 v2, 0x0

    .line 170
    .local v2, "f_type":Lcom/dropbox/core/v2/properties/PropertyType;
    :goto_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v6

    sget-object v7, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v6, v7, :cond_4

    .line 171
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v3

    .line 172
    .local v3, "field":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 173
    const-string v6, "name"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 174
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "f_name":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .restart local v1    # "f_name":Ljava/lang/String;
    goto :goto_0

    .line 176
    :cond_1
    const-string v6, "description"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 177
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "f_description":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .restart local v0    # "f_description":Ljava/lang/String;
    goto :goto_0

    .line 179
    :cond_2
    const-string v6, "type"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 180
    sget-object v6, Lcom/dropbox/core/v2/properties/PropertyType$Serializer;->INSTANCE:Lcom/dropbox/core/v2/properties/PropertyType$Serializer;

    invoke-virtual {v6, p1}, Lcom/dropbox/core/v2/properties/PropertyType$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/properties/PropertyType;

    move-result-object v2

    goto :goto_0

    .line 183
    :cond_3
    invoke-static {p1}, Lcom/dropbox/core/v2/properties/PropertyFieldTemplate$Serializer;->skipValue(Lcom/fasterxml/jackson/core/JsonParser;)V

    goto :goto_0

    .line 186
    .end local v3    # "field":Ljava/lang/String;
    :cond_4
    if-nez v1, :cond_5

    .line 187
    new-instance v6, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v7, "Required field \"name\" missing."

    invoke-direct {v6, p1, v7}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v6

    .line 189
    :cond_5
    if-nez v0, :cond_6

    .line 190
    new-instance v6, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v7, "Required field \"description\" missing."

    invoke-direct {v6, p1, v7}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v6

    .line 192
    :cond_6
    if-nez v2, :cond_7

    .line 193
    new-instance v6, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v7, "Required field \"type\" missing."

    invoke-direct {v6, p1, v7}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v6

    .line 195
    :cond_7
    new-instance v5, Lcom/dropbox/core/v2/properties/PropertyFieldTemplate;

    invoke-direct {v5, v1, v0, v2}, Lcom/dropbox/core/v2/properties/PropertyFieldTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/properties/PropertyType;)V

    .line 200
    .local v5, "value":Lcom/dropbox/core/v2/properties/PropertyFieldTemplate;
    if-nez p2, :cond_8

    .line 201
    invoke-static {p1}, Lcom/dropbox/core/v2/properties/PropertyFieldTemplate$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 203
    :cond_8
    return-object v5

    .line 198
    .end local v0    # "f_description":Ljava/lang/String;
    .end local v1    # "f_name":Ljava/lang/String;
    .end local v2    # "f_type":Lcom/dropbox/core/v2/properties/PropertyType;
    .end local v5    # "value":Lcom/dropbox/core/v2/properties/PropertyFieldTemplate;
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
    .line 139
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/properties/PropertyFieldTemplate$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/properties/PropertyFieldTemplate;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/properties/PropertyFieldTemplate;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 2
    .param p1, "value"    # Lcom/dropbox/core/v2/properties/PropertyFieldTemplate;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p3, "collapse"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 144
    if-nez p3, :cond_0

    .line 145
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 147
    :cond_0
    const-string v0, "name"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 148
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/properties/PropertyFieldTemplate;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 149
    const-string v0, "description"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 150
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/properties/PropertyFieldTemplate;->description:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 151
    const-string v0, "type"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 152
    sget-object v0, Lcom/dropbox/core/v2/properties/PropertyType$Serializer;->INSTANCE:Lcom/dropbox/core/v2/properties/PropertyType$Serializer;

    iget-object v1, p1, Lcom/dropbox/core/v2/properties/PropertyFieldTemplate;->type:Lcom/dropbox/core/v2/properties/PropertyType;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/properties/PropertyType$Serializer;->serialize(Lcom/dropbox/core/v2/properties/PropertyType;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 153
    if-nez p3, :cond_1

    .line 154
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 156
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
    .line 139
    check-cast p1, Lcom/dropbox/core/v2/properties/PropertyFieldTemplate;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/properties/PropertyFieldTemplate$Serializer;->serialize(Lcom/dropbox/core/v2/properties/PropertyFieldTemplate;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    return-void
.end method
