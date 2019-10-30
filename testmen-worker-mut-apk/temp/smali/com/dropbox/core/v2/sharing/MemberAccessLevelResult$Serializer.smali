.class Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "MemberAccessLevelResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 237
    new-instance v0, Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 236
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;
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
    .line 264
    const/4 v4, 0x0

    .line 265
    .local v4, "tag":Ljava/lang/String;
    if-nez p2, :cond_0

    .line 266
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 267
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v4

    .line 269
    :cond_0
    if-nez v4, :cond_6

    .line 270
    const/4 v1, 0x0

    .line 271
    .local v1, "f_accessLevel":Lcom/dropbox/core/v2/sharing/AccessLevel;
    const/4 v2, 0x0

    .line 272
    .local v2, "f_warning":Ljava/lang/String;
    const/4 v0, 0x0

    .line 273
    .local v0, "f_accessDetails":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/sharing/ParentFolderAccessInfo;>;"
    :goto_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v6

    sget-object v7, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v6, v7, :cond_4

    .line 274
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v3

    .line 275
    .local v3, "field":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 276
    const-string v6, "access_level"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 277
    sget-object v6, Lcom/dropbox/core/v2/sharing/AccessLevel$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/AccessLevel$Serializer;

    invoke-static {v6}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "f_accessLevel":Lcom/dropbox/core/v2/sharing/AccessLevel;
    check-cast v1, Lcom/dropbox/core/v2/sharing/AccessLevel;

    .restart local v1    # "f_accessLevel":Lcom/dropbox/core/v2/sharing/AccessLevel;
    goto :goto_0

    .line 279
    :cond_1
    const-string v6, "warning"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 280
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v6

    invoke-static {v6}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "f_warning":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .restart local v2    # "f_warning":Ljava/lang/String;
    goto :goto_0

    .line 282
    :cond_2
    const-string v6, "access_details"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 283
    sget-object v6, Lcom/dropbox/core/v2/sharing/ParentFolderAccessInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/ParentFolderAccessInfo$Serializer;

    invoke-static {v6}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v6

    invoke-static {v6}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "f_accessDetails":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/sharing/ParentFolderAccessInfo;>;"
    check-cast v0, Ljava/util/List;

    .restart local v0    # "f_accessDetails":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/sharing/ParentFolderAccessInfo;>;"
    goto :goto_0

    .line 286
    :cond_3
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult$Serializer;->skipValue(Lcom/fasterxml/jackson/core/JsonParser;)V

    goto :goto_0

    .line 289
    .end local v3    # "field":Ljava/lang/String;
    :cond_4
    new-instance v5, Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;

    invoke-direct {v5, v1, v2, v0}, Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;-><init>(Lcom/dropbox/core/v2/sharing/AccessLevel;Ljava/lang/String;Ljava/util/List;)V

    .line 294
    .local v5, "value":Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;
    if-nez p2, :cond_5

    .line 295
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 297
    :cond_5
    return-object v5

    .line 292
    .end local v0    # "f_accessDetails":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/sharing/ParentFolderAccessInfo;>;"
    .end local v1    # "f_accessLevel":Lcom/dropbox/core/v2/sharing/AccessLevel;
    .end local v2    # "f_warning":Ljava/lang/String;
    .end local v5    # "value":Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;
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
    .line 236
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 2
    .param p1, "value"    # Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p3, "collapse"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 241
    if-nez p3, :cond_0

    .line 242
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 244
    :cond_0
    iget-object v0, p1, Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;->accessLevel:Lcom/dropbox/core/v2/sharing/AccessLevel;

    if-eqz v0, :cond_1

    .line 245
    const-string v0, "access_level"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 246
    sget-object v0, Lcom/dropbox/core/v2/sharing/AccessLevel$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/AccessLevel$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;->accessLevel:Lcom/dropbox/core/v2/sharing/AccessLevel;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 248
    :cond_1
    iget-object v0, p1, Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;->warning:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 249
    const-string v0, "warning"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 250
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;->warning:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 252
    :cond_2
    iget-object v0, p1, Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;->accessDetails:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 253
    const-string v0, "access_details"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 254
    sget-object v0, Lcom/dropbox/core/v2/sharing/ParentFolderAccessInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/ParentFolderAccessInfo$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;->accessDetails:Ljava/util/List;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 256
    :cond_3
    if-nez p3, :cond_4

    .line 257
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 259
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
    .line 236
    check-cast p1, Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    return-void
.end method
