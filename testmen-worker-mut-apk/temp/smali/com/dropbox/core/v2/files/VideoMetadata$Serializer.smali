.class Lcom/dropbox/core/v2/files/VideoMetadata$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "VideoMetadata.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/files/VideoMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/files/VideoMetadata;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/files/VideoMetadata$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 217
    new-instance v0, Lcom/dropbox/core/v2/files/VideoMetadata$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/VideoMetadata$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/files/VideoMetadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/VideoMetadata$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 216
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/files/VideoMetadata;
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
    .line 249
    const/4 v5, 0x0

    .line 250
    .local v5, "tag":Ljava/lang/String;
    if-nez p2, :cond_0

    .line 251
    invoke-static {p1}, Lcom/dropbox/core/v2/files/VideoMetadata$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 252
    invoke-static {p1}, Lcom/dropbox/core/v2/files/VideoMetadata$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v5

    .line 253
    const-string v7, "video"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 254
    const/4 v5, 0x0

    .line 257
    :cond_0
    if-nez v5, :cond_7

    .line 258
    const/4 v0, 0x0

    .line 259
    .local v0, "f_dimensions":Lcom/dropbox/core/v2/files/Dimensions;
    const/4 v2, 0x0

    .line 260
    .local v2, "f_location":Lcom/dropbox/core/v2/files/GpsCoordinates;
    const/4 v3, 0x0

    .line 261
    .local v3, "f_timeTaken":Ljava/util/Date;
    const/4 v1, 0x0

    .line 262
    .local v1, "f_duration":Ljava/lang/Long;
    :goto_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v7

    sget-object v8, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v7, v8, :cond_5

    .line 263
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v4

    .line 264
    .local v4, "field":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 265
    const-string v7, "dimensions"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 266
    sget-object v7, Lcom/dropbox/core/v2/files/Dimensions$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/Dimensions$Serializer;

    invoke-static {v7}, Lcom/dropbox/core/stone/StoneSerializers;->nullableStruct(Lcom/dropbox/core/stone/StructSerializer;)Lcom/dropbox/core/stone/StructSerializer;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/dropbox/core/stone/StructSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "f_dimensions":Lcom/dropbox/core/v2/files/Dimensions;
    check-cast v0, Lcom/dropbox/core/v2/files/Dimensions;

    .restart local v0    # "f_dimensions":Lcom/dropbox/core/v2/files/Dimensions;
    goto :goto_0

    .line 268
    :cond_1
    const-string v7, "location"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 269
    sget-object v7, Lcom/dropbox/core/v2/files/GpsCoordinates$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/GpsCoordinates$Serializer;

    invoke-static {v7}, Lcom/dropbox/core/stone/StoneSerializers;->nullableStruct(Lcom/dropbox/core/stone/StructSerializer;)Lcom/dropbox/core/stone/StructSerializer;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/dropbox/core/stone/StructSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "f_location":Lcom/dropbox/core/v2/files/GpsCoordinates;
    check-cast v2, Lcom/dropbox/core/v2/files/GpsCoordinates;

    .restart local v2    # "f_location":Lcom/dropbox/core/v2/files/GpsCoordinates;
    goto :goto_0

    .line 271
    :cond_2
    const-string v7, "time_taken"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 272
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->timestamp()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v7

    invoke-static {v7}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "f_timeTaken":Ljava/util/Date;
    check-cast v3, Ljava/util/Date;

    .restart local v3    # "f_timeTaken":Ljava/util/Date;
    goto :goto_0

    .line 274
    :cond_3
    const-string v7, "duration"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 275
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->uInt64()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v7

    invoke-static {v7}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "f_duration":Ljava/lang/Long;
    check-cast v1, Ljava/lang/Long;

    .restart local v1    # "f_duration":Ljava/lang/Long;
    goto :goto_0

    .line 278
    :cond_4
    invoke-static {p1}, Lcom/dropbox/core/v2/files/VideoMetadata$Serializer;->skipValue(Lcom/fasterxml/jackson/core/JsonParser;)V

    goto :goto_0

    .line 281
    .end local v4    # "field":Ljava/lang/String;
    :cond_5
    new-instance v6, Lcom/dropbox/core/v2/files/VideoMetadata;

    invoke-direct {v6, v0, v2, v3, v1}, Lcom/dropbox/core/v2/files/VideoMetadata;-><init>(Lcom/dropbox/core/v2/files/Dimensions;Lcom/dropbox/core/v2/files/GpsCoordinates;Ljava/util/Date;Ljava/lang/Long;)V

    .line 286
    .local v6, "value":Lcom/dropbox/core/v2/files/VideoMetadata;
    if-nez p2, :cond_6

    .line 287
    invoke-static {p1}, Lcom/dropbox/core/v2/files/VideoMetadata$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 289
    :cond_6
    return-object v6

    .line 284
    .end local v0    # "f_dimensions":Lcom/dropbox/core/v2/files/Dimensions;
    .end local v1    # "f_duration":Ljava/lang/Long;
    .end local v2    # "f_location":Lcom/dropbox/core/v2/files/GpsCoordinates;
    .end local v3    # "f_timeTaken":Ljava/util/Date;
    .end local v6    # "value":Lcom/dropbox/core/v2/files/VideoMetadata;
    :cond_7
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
    .line 216
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/files/VideoMetadata$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/files/VideoMetadata;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/files/VideoMetadata;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 2
    .param p1, "value"    # Lcom/dropbox/core/v2/files/VideoMetadata;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p3, "collapse"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 221
    if-nez p3, :cond_0

    .line 222
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 224
    :cond_0
    const-string v0, "video"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/files/VideoMetadata$Serializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 225
    iget-object v0, p1, Lcom/dropbox/core/v2/files/VideoMetadata;->dimensions:Lcom/dropbox/core/v2/files/Dimensions;

    if-eqz v0, :cond_1

    .line 226
    const-string v0, "dimensions"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 227
    sget-object v0, Lcom/dropbox/core/v2/files/Dimensions$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/Dimensions$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullableStruct(Lcom/dropbox/core/stone/StructSerializer;)Lcom/dropbox/core/stone/StructSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/files/VideoMetadata;->dimensions:Lcom/dropbox/core/v2/files/Dimensions;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StructSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 229
    :cond_1
    iget-object v0, p1, Lcom/dropbox/core/v2/files/VideoMetadata;->location:Lcom/dropbox/core/v2/files/GpsCoordinates;

    if-eqz v0, :cond_2

    .line 230
    const-string v0, "location"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 231
    sget-object v0, Lcom/dropbox/core/v2/files/GpsCoordinates$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/GpsCoordinates$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullableStruct(Lcom/dropbox/core/stone/StructSerializer;)Lcom/dropbox/core/stone/StructSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/files/VideoMetadata;->location:Lcom/dropbox/core/v2/files/GpsCoordinates;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StructSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 233
    :cond_2
    iget-object v0, p1, Lcom/dropbox/core/v2/files/VideoMetadata;->timeTaken:Ljava/util/Date;

    if-eqz v0, :cond_3

    .line 234
    const-string v0, "time_taken"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 235
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->timestamp()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/files/VideoMetadata;->timeTaken:Ljava/util/Date;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 237
    :cond_3
    iget-object v0, p1, Lcom/dropbox/core/v2/files/VideoMetadata;->duration:Ljava/lang/Long;

    if-eqz v0, :cond_4

    .line 238
    const-string v0, "duration"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 239
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->uInt64()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/files/VideoMetadata;->duration:Ljava/lang/Long;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 241
    :cond_4
    if-nez p3, :cond_5

    .line 242
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 244
    :cond_5
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
    .line 216
    check-cast p1, Lcom/dropbox/core/v2/files/VideoMetadata;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/files/VideoMetadata$Serializer;->serialize(Lcom/dropbox/core/v2/files/VideoMetadata;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    return-void
.end method
