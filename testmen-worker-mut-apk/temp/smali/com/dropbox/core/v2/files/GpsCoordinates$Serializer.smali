.class Lcom/dropbox/core/v2/files/GpsCoordinates$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "GpsCoordinates.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/files/GpsCoordinates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/files/GpsCoordinates;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/files/GpsCoordinates$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 103
    new-instance v0, Lcom/dropbox/core/v2/files/GpsCoordinates$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/GpsCoordinates$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/files/GpsCoordinates$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/GpsCoordinates$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/files/GpsCoordinates;
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
    .line 122
    const/4 v3, 0x0

    .line 123
    .local v3, "tag":Ljava/lang/String;
    if-nez p2, :cond_0

    .line 124
    invoke-static {p1}, Lcom/dropbox/core/v2/files/GpsCoordinates$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 125
    invoke-static {p1}, Lcom/dropbox/core/v2/files/GpsCoordinates$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v3

    .line 127
    :cond_0
    if-nez v3, :cond_7

    .line 128
    const/4 v0, 0x0

    .line 129
    .local v0, "f_latitude":Ljava/lang/Double;
    const/4 v1, 0x0

    .line 130
    .local v1, "f_longitude":Ljava/lang/Double;
    :goto_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v5

    sget-object v6, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v5, v6, :cond_3

    .line 131
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v2

    .line 132
    .local v2, "field":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 133
    const-string v5, "latitude"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 134
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->float64()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "f_latitude":Ljava/lang/Double;
    check-cast v0, Ljava/lang/Double;

    .restart local v0    # "f_latitude":Ljava/lang/Double;
    goto :goto_0

    .line 136
    :cond_1
    const-string v5, "longitude"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 137
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->float64()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "f_longitude":Ljava/lang/Double;
    check-cast v1, Ljava/lang/Double;

    .restart local v1    # "f_longitude":Ljava/lang/Double;
    goto :goto_0

    .line 140
    :cond_2
    invoke-static {p1}, Lcom/dropbox/core/v2/files/GpsCoordinates$Serializer;->skipValue(Lcom/fasterxml/jackson/core/JsonParser;)V

    goto :goto_0

    .line 143
    .end local v2    # "field":Ljava/lang/String;
    :cond_3
    if-nez v0, :cond_4

    .line 144
    new-instance v5, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v6, "Required field \"latitude\" missing."

    invoke-direct {v5, p1, v6}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v5

    .line 146
    :cond_4
    if-nez v1, :cond_5

    .line 147
    new-instance v5, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v6, "Required field \"longitude\" missing."

    invoke-direct {v5, p1, v6}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v5

    .line 149
    :cond_5
    new-instance v4, Lcom/dropbox/core/v2/files/GpsCoordinates;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-direct {v4, v6, v7, v8, v9}, Lcom/dropbox/core/v2/files/GpsCoordinates;-><init>(DD)V

    .line 154
    .local v4, "value":Lcom/dropbox/core/v2/files/GpsCoordinates;
    if-nez p2, :cond_6

    .line 155
    invoke-static {p1}, Lcom/dropbox/core/v2/files/GpsCoordinates$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 157
    :cond_6
    return-object v4

    .line 152
    .end local v0    # "f_latitude":Ljava/lang/Double;
    .end local v1    # "f_longitude":Ljava/lang/Double;
    .end local v4    # "value":Lcom/dropbox/core/v2/files/GpsCoordinates;
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
    .line 102
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/files/GpsCoordinates$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/files/GpsCoordinates;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/files/GpsCoordinates;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 4
    .param p1, "value"    # Lcom/dropbox/core/v2/files/GpsCoordinates;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p3, "collapse"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 107
    if-nez p3, :cond_0

    .line 108
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 110
    :cond_0
    const-string v0, "latitude"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 111
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->float64()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-wide v2, p1, Lcom/dropbox/core/v2/files/GpsCoordinates;->latitude:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 112
    const-string v0, "longitude"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 113
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->float64()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-wide v2, p1, Lcom/dropbox/core/v2/files/GpsCoordinates;->longitude:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 114
    if-nez p3, :cond_1

    .line 115
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 117
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
    .line 102
    check-cast p1, Lcom/dropbox/core/v2/files/GpsCoordinates;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/files/GpsCoordinates$Serializer;->serialize(Lcom/dropbox/core/v2/files/GpsCoordinates;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    return-void
.end method
