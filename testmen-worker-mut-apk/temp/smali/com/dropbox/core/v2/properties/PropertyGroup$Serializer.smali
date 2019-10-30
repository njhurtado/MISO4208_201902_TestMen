.class public Lcom/dropbox/core/v2/properties/PropertyGroup$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "PropertyGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/properties/PropertyGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/properties/PropertyGroup;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/properties/PropertyGroup$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 130
    new-instance v0, Lcom/dropbox/core/v2/properties/PropertyGroup$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/properties/PropertyGroup$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/properties/PropertyGroup$Serializer;->INSTANCE:Lcom/dropbox/core/v2/properties/PropertyGroup$Serializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/properties/PropertyGroup;
    .locals 8
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "collapsed"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 149
    const/4 v3, 0x0

    .line 150
    .local v3, "tag":Ljava/lang/String;
    if-nez p2, :cond_0

    .line 151
    invoke-static {p1}, Lcom/dropbox/core/v2/properties/PropertyGroup$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 152
    invoke-static {p1}, Lcom/dropbox/core/v2/properties/PropertyGroup$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v3

    .line 154
    :cond_0
    if-nez v3, :cond_7

    .line 155
    const/4 v1, 0x0

    .line 156
    .local v1, "f_templateId":Ljava/lang/String;
    const/4 v0, 0x0

    .line 157
    .local v0, "f_fields":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/properties/PropertyField;>;"
    :goto_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v5

    sget-object v6, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v5, v6, :cond_3

    .line 158
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v2

    .line 159
    .local v2, "field":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 160
    const-string v5, "template_id"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 161
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "f_templateId":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .restart local v1    # "f_templateId":Ljava/lang/String;
    goto :goto_0

    .line 163
    :cond_1
    const-string v5, "fields"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 164
    sget-object v5, Lcom/dropbox/core/v2/properties/PropertyField$Serializer;->INSTANCE:Lcom/dropbox/core/v2/properties/PropertyField$Serializer;

    invoke-static {v5}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "f_fields":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/properties/PropertyField;>;"
    check-cast v0, Ljava/util/List;

    .restart local v0    # "f_fields":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/properties/PropertyField;>;"
    goto :goto_0

    .line 167
    :cond_2
    invoke-static {p1}, Lcom/dropbox/core/v2/properties/PropertyGroup$Serializer;->skipValue(Lcom/fasterxml/jackson/core/JsonParser;)V

    goto :goto_0

    .line 170
    .end local v2    # "field":Ljava/lang/String;
    :cond_3
    if-nez v1, :cond_4

    .line 171
    new-instance v5, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v6, "Required field \"template_id\" missing."

    invoke-direct {v5, p1, v6}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v5

    .line 173
    :cond_4
    if-nez v0, :cond_5

    .line 174
    new-instance v5, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v6, "Required field \"fields\" missing."

    invoke-direct {v5, p1, v6}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v5

    .line 176
    :cond_5
    new-instance v4, Lcom/dropbox/core/v2/properties/PropertyGroup;

    invoke-direct {v4, v1, v0}, Lcom/dropbox/core/v2/properties/PropertyGroup;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 181
    .local v4, "value":Lcom/dropbox/core/v2/properties/PropertyGroup;
    if-nez p2, :cond_6

    .line 182
    invoke-static {p1}, Lcom/dropbox/core/v2/properties/PropertyGroup$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 184
    :cond_6
    return-object v4

    .line 179
    .end local v0    # "f_fields":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/properties/PropertyField;>;"
    .end local v1    # "f_templateId":Ljava/lang/String;
    .end local v4    # "value":Lcom/dropbox/core/v2/properties/PropertyGroup;
    :cond_7
    new-instance v5, Lcom/fasterxml/jackson/core/JsonParseException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No subtype found that matches tag: \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, p1, v6}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v5
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
    .line 129
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/properties/PropertyGroup$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/properties/PropertyGroup;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/properties/PropertyGroup;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 2
    .param p1, "value"    # Lcom/dropbox/core/v2/properties/PropertyGroup;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p3, "collapse"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 134
    if-nez p3, :cond_0

    .line 135
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 137
    :cond_0
    const-string v0, "template_id"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 138
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/properties/PropertyGroup;->templateId:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 139
    const-string v0, "fields"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 140
    sget-object v0, Lcom/dropbox/core/v2/properties/PropertyField$Serializer;->INSTANCE:Lcom/dropbox/core/v2/properties/PropertyField$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/properties/PropertyGroup;->fields:Ljava/util/List;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 141
    if-nez p3, :cond_1

    .line 142
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 144
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
    .line 129
    check-cast p1, Lcom/dropbox/core/v2/properties/PropertyGroup;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/properties/PropertyGroup$Serializer;->serialize(Lcom/dropbox/core/v2/properties/PropertyGroup;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    return-void
.end method
