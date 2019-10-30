.class Lcom/dropbox/core/v2/files/PropertyGroupWithPath$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "PropertyGroupWithPath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/files/PropertyGroupWithPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/files/PropertyGroupWithPath;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/files/PropertyGroupWithPath$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 121
    new-instance v0, Lcom/dropbox/core/v2/files/PropertyGroupWithPath$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/PropertyGroupWithPath$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/files/PropertyGroupWithPath$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/PropertyGroupWithPath$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/files/PropertyGroupWithPath;
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
    .line 140
    const/4 v3, 0x0

    .line 141
    .local v3, "tag":Ljava/lang/String;
    if-nez p2, :cond_0

    .line 142
    invoke-static {p1}, Lcom/dropbox/core/v2/files/PropertyGroupWithPath$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 143
    invoke-static {p1}, Lcom/dropbox/core/v2/files/PropertyGroupWithPath$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v3

    .line 145
    :cond_0
    if-nez v3, :cond_7

    .line 146
    const/4 v0, 0x0

    .line 147
    .local v0, "f_path":Ljava/lang/String;
    const/4 v1, 0x0

    .line 148
    .local v1, "f_propertyGroups":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/properties/PropertyGroup;>;"
    :goto_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v5

    sget-object v6, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v5, v6, :cond_3

    .line 149
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v2

    .line 150
    .local v2, "field":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 151
    const-string v5, "path"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 152
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "f_path":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .restart local v0    # "f_path":Ljava/lang/String;
    goto :goto_0

    .line 154
    :cond_1
    const-string v5, "property_groups"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 155
    sget-object v5, Lcom/dropbox/core/v2/properties/PropertyGroup$Serializer;->INSTANCE:Lcom/dropbox/core/v2/properties/PropertyGroup$Serializer;

    invoke-static {v5}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "f_propertyGroups":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/properties/PropertyGroup;>;"
    check-cast v1, Ljava/util/List;

    .restart local v1    # "f_propertyGroups":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/properties/PropertyGroup;>;"
    goto :goto_0

    .line 158
    :cond_2
    invoke-static {p1}, Lcom/dropbox/core/v2/files/PropertyGroupWithPath$Serializer;->skipValue(Lcom/fasterxml/jackson/core/JsonParser;)V

    goto :goto_0

    .line 161
    .end local v2    # "field":Ljava/lang/String;
    :cond_3
    if-nez v0, :cond_4

    .line 162
    new-instance v5, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v6, "Required field \"path\" missing."

    invoke-direct {v5, p1, v6}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v5

    .line 164
    :cond_4
    if-nez v1, :cond_5

    .line 165
    new-instance v5, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v6, "Required field \"property_groups\" missing."

    invoke-direct {v5, p1, v6}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v5

    .line 167
    :cond_5
    new-instance v4, Lcom/dropbox/core/v2/files/PropertyGroupWithPath;

    invoke-direct {v4, v0, v1}, Lcom/dropbox/core/v2/files/PropertyGroupWithPath;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 172
    .local v4, "value":Lcom/dropbox/core/v2/files/PropertyGroupWithPath;
    if-nez p2, :cond_6

    .line 173
    invoke-static {p1}, Lcom/dropbox/core/v2/files/PropertyGroupWithPath$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 175
    :cond_6
    return-object v4

    .line 170
    .end local v0    # "f_path":Ljava/lang/String;
    .end local v1    # "f_propertyGroups":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/properties/PropertyGroup;>;"
    .end local v4    # "value":Lcom/dropbox/core/v2/files/PropertyGroupWithPath;
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
    .line 120
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/files/PropertyGroupWithPath$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/files/PropertyGroupWithPath;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/files/PropertyGroupWithPath;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 2
    .param p1, "value"    # Lcom/dropbox/core/v2/files/PropertyGroupWithPath;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p3, "collapse"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 125
    if-nez p3, :cond_0

    .line 126
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 128
    :cond_0
    const-string v0, "path"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 129
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/files/PropertyGroupWithPath;->path:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 130
    const-string v0, "property_groups"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 131
    sget-object v0, Lcom/dropbox/core/v2/properties/PropertyGroup$Serializer;->INSTANCE:Lcom/dropbox/core/v2/properties/PropertyGroup$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/files/PropertyGroupWithPath;->propertyGroups:Ljava/util/List;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 132
    if-nez p3, :cond_1

    .line 133
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 135
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
    .line 120
    check-cast p1, Lcom/dropbox/core/v2/files/PropertyGroupWithPath;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/files/PropertyGroupWithPath$Serializer;->serialize(Lcom/dropbox/core/v2/files/PropertyGroupWithPath;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    return-void
.end method
