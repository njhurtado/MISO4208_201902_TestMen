.class Lcom/dropbox/core/v2/files/PhotoMetadata$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "PhotoMetadata.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/files/PhotoMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/files/PhotoMetadata;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/files/PhotoMetadata$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 185
    new-instance v0, Lcom/dropbox/core/v2/files/PhotoMetadata$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/PhotoMetadata$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/files/PhotoMetadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/PhotoMetadata$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 184
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/files/PhotoMetadata;
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
    .line 213
    const/4 v4, 0x0

    .line 214
    .local v4, "tag":Ljava/lang/String;
    if-nez p2, :cond_0

    .line 215
    invoke-static {p1}, Lcom/dropbox/core/v2/files/PhotoMetadata$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 216
    invoke-static {p1}, Lcom/dropbox/core/v2/files/PhotoMetadata$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v4

    .line 217
    const-string v6, "photo"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 218
    const/4 v4, 0x0

    .line 221
    :cond_0
    if-nez v4, :cond_6

    .line 222
    const/4 v0, 0x0

    .line 223
    .local v0, "f_dimensions":Lcom/dropbox/core/v2/files/Dimensions;
    const/4 v1, 0x0

    .line 224
    .local v1, "f_location":Lcom/dropbox/core/v2/files/GpsCoordinates;
    const/4 v2, 0x0

    .line 225
    .local v2, "f_timeTaken":Ljava/util/Date;
    :goto_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v6

    sget-object v7, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v6, v7, :cond_4

    .line 226
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v3

    .line 227
    .local v3, "field":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 228
    const-string v6, "dimensions"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 229
    sget-object v6, Lcom/dropbox/core/v2/files/Dimensions$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/Dimensions$Serializer;

    invoke-static {v6}, Lcom/dropbox/core/stone/StoneSerializers;->nullableStruct(Lcom/dropbox/core/stone/StructSerializer;)Lcom/dropbox/core/stone/StructSerializer;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/dropbox/core/stone/StructSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "f_dimensions":Lcom/dropbox/core/v2/files/Dimensions;
    check-cast v0, Lcom/dropbox/core/v2/files/Dimensions;

    .restart local v0    # "f_dimensions":Lcom/dropbox/core/v2/files/Dimensions;
    goto :goto_0

    .line 231
    :cond_1
    const-string v6, "location"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 232
    sget-object v6, Lcom/dropbox/core/v2/files/GpsCoordinates$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/GpsCoordinates$Serializer;

    invoke-static {v6}, Lcom/dropbox/core/stone/StoneSerializers;->nullableStruct(Lcom/dropbox/core/stone/StructSerializer;)Lcom/dropbox/core/stone/StructSerializer;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/dropbox/core/stone/StructSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "f_location":Lcom/dropbox/core/v2/files/GpsCoordinates;
    check-cast v1, Lcom/dropbox/core/v2/files/GpsCoordinates;

    .restart local v1    # "f_location":Lcom/dropbox/core/v2/files/GpsCoordinates;
    goto :goto_0

    .line 234
    :cond_2
    const-string v6, "time_taken"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 235
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->timestamp()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v6

    invoke-static {v6}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "f_timeTaken":Ljava/util/Date;
    check-cast v2, Ljava/util/Date;

    .restart local v2    # "f_timeTaken":Ljava/util/Date;
    goto :goto_0

    .line 238
    :cond_3
    invoke-static {p1}, Lcom/dropbox/core/v2/files/PhotoMetadata$Serializer;->skipValue(Lcom/fasterxml/jackson/core/JsonParser;)V

    goto :goto_0

    .line 241
    .end local v3    # "field":Ljava/lang/String;
    :cond_4
    new-instance v5, Lcom/dropbox/core/v2/files/PhotoMetadata;

    invoke-direct {v5, v0, v1, v2}, Lcom/dropbox/core/v2/files/PhotoMetadata;-><init>(Lcom/dropbox/core/v2/files/Dimensions;Lcom/dropbox/core/v2/files/GpsCoordinates;Ljava/util/Date;)V

    .line 246
    .local v5, "value":Lcom/dropbox/core/v2/files/PhotoMetadata;
    if-nez p2, :cond_5

    .line 247
    invoke-static {p1}, Lcom/dropbox/core/v2/files/PhotoMetadata$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 249
    :cond_5
    return-object v5

    .line 244
    .end local v0    # "f_dimensions":Lcom/dropbox/core/v2/files/Dimensions;
    .end local v1    # "f_location":Lcom/dropbox/core/v2/files/GpsCoordinates;
    .end local v2    # "f_timeTaken":Ljava/util/Date;
    .end local v5    # "value":Lcom/dropbox/core/v2/files/PhotoMetadata;
    :cond_6
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
    .line 184
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/files/PhotoMetadata$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/files/PhotoMetadata;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/files/PhotoMetadata;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 2
    .param p1, "value"    # Lcom/dropbox/core/v2/files/PhotoMetadata;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p3, "collapse"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 189
    if-nez p3, :cond_0

    .line 190
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 192
    :cond_0
    const-string v0, "photo"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/files/PhotoMetadata$Serializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 193
    iget-object v0, p1, Lcom/dropbox/core/v2/files/PhotoMetadata;->dimensions:Lcom/dropbox/core/v2/files/Dimensions;

    if-eqz v0, :cond_1

    .line 194
    const-string v0, "dimensions"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 195
    sget-object v0, Lcom/dropbox/core/v2/files/Dimensions$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/Dimensions$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullableStruct(Lcom/dropbox/core/stone/StructSerializer;)Lcom/dropbox/core/stone/StructSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/files/PhotoMetadata;->dimensions:Lcom/dropbox/core/v2/files/Dimensions;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StructSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 197
    :cond_1
    iget-object v0, p1, Lcom/dropbox/core/v2/files/PhotoMetadata;->location:Lcom/dropbox/core/v2/files/GpsCoordinates;

    if-eqz v0, :cond_2

    .line 198
    const-string v0, "location"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 199
    sget-object v0, Lcom/dropbox/core/v2/files/GpsCoordinates$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/GpsCoordinates$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullableStruct(Lcom/dropbox/core/stone/StructSerializer;)Lcom/dropbox/core/stone/StructSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/files/PhotoMetadata;->location:Lcom/dropbox/core/v2/files/GpsCoordinates;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StructSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 201
    :cond_2
    iget-object v0, p1, Lcom/dropbox/core/v2/files/PhotoMetadata;->timeTaken:Ljava/util/Date;

    if-eqz v0, :cond_3

    .line 202
    const-string v0, "time_taken"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 203
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->timestamp()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/files/PhotoMetadata;->timeTaken:Ljava/util/Date;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 205
    :cond_3
    if-nez p3, :cond_4

    .line 206
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 208
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
    .line 184
    check-cast p1, Lcom/dropbox/core/v2/files/PhotoMetadata;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/files/PhotoMetadata$Serializer;->serialize(Lcom/dropbox/core/v2/files/PhotoMetadata;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    return-void
.end method
