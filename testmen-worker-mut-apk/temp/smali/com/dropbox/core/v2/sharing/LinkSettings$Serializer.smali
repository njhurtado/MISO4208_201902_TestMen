.class Lcom/dropbox/core/v2/sharing/LinkSettings$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "LinkSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/sharing/LinkSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/sharing/LinkSettings;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/sharing/LinkSettings$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 200
    new-instance v0, Lcom/dropbox/core/v2/sharing/LinkSettings$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/LinkSettings$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/sharing/LinkSettings$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/LinkSettings$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 199
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/sharing/LinkSettings;
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
    .line 227
    const/4 v4, 0x0

    .line 228
    .local v4, "tag":Ljava/lang/String;
    if-nez p2, :cond_0

    .line 229
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/LinkSettings$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 230
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/LinkSettings$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v4

    .line 232
    :cond_0
    if-nez v4, :cond_6

    .line 233
    const/4 v0, 0x0

    .line 234
    .local v0, "f_audience":Lcom/dropbox/core/v2/sharing/LinkAudience;
    const/4 v1, 0x0

    .line 235
    .local v1, "f_expiry":Lcom/dropbox/core/v2/sharing/LinkExpiry;
    const/4 v2, 0x0

    .line 236
    .local v2, "f_password":Lcom/dropbox/core/v2/sharing/LinkPassword;
    :goto_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v6

    sget-object v7, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v6, v7, :cond_4

    .line 237
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v3

    .line 238
    .local v3, "field":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 239
    const-string v6, "audience"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 240
    sget-object v6, Lcom/dropbox/core/v2/sharing/LinkAudience$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/LinkAudience$Serializer;

    invoke-static {v6}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "f_audience":Lcom/dropbox/core/v2/sharing/LinkAudience;
    check-cast v0, Lcom/dropbox/core/v2/sharing/LinkAudience;

    .restart local v0    # "f_audience":Lcom/dropbox/core/v2/sharing/LinkAudience;
    goto :goto_0

    .line 242
    :cond_1
    const-string v6, "expiry"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 243
    sget-object v6, Lcom/dropbox/core/v2/sharing/LinkExpiry$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/LinkExpiry$Serializer;

    invoke-static {v6}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "f_expiry":Lcom/dropbox/core/v2/sharing/LinkExpiry;
    check-cast v1, Lcom/dropbox/core/v2/sharing/LinkExpiry;

    .restart local v1    # "f_expiry":Lcom/dropbox/core/v2/sharing/LinkExpiry;
    goto :goto_0

    .line 245
    :cond_2
    const-string v6, "password"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 246
    sget-object v6, Lcom/dropbox/core/v2/sharing/LinkPassword$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/LinkPassword$Serializer;

    invoke-static {v6}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "f_password":Lcom/dropbox/core/v2/sharing/LinkPassword;
    check-cast v2, Lcom/dropbox/core/v2/sharing/LinkPassword;

    .restart local v2    # "f_password":Lcom/dropbox/core/v2/sharing/LinkPassword;
    goto :goto_0

    .line 249
    :cond_3
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/LinkSettings$Serializer;->skipValue(Lcom/fasterxml/jackson/core/JsonParser;)V

    goto :goto_0

    .line 252
    .end local v3    # "field":Ljava/lang/String;
    :cond_4
    new-instance v5, Lcom/dropbox/core/v2/sharing/LinkSettings;

    invoke-direct {v5, v0, v1, v2}, Lcom/dropbox/core/v2/sharing/LinkSettings;-><init>(Lcom/dropbox/core/v2/sharing/LinkAudience;Lcom/dropbox/core/v2/sharing/LinkExpiry;Lcom/dropbox/core/v2/sharing/LinkPassword;)V

    .line 257
    .local v5, "value":Lcom/dropbox/core/v2/sharing/LinkSettings;
    if-nez p2, :cond_5

    .line 258
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/LinkSettings$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 260
    :cond_5
    return-object v5

    .line 255
    .end local v0    # "f_audience":Lcom/dropbox/core/v2/sharing/LinkAudience;
    .end local v1    # "f_expiry":Lcom/dropbox/core/v2/sharing/LinkExpiry;
    .end local v2    # "f_password":Lcom/dropbox/core/v2/sharing/LinkPassword;
    .end local v5    # "value":Lcom/dropbox/core/v2/sharing/LinkSettings;
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
    .line 199
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/sharing/LinkSettings$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/sharing/LinkSettings;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/sharing/LinkSettings;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 2
    .param p1, "value"    # Lcom/dropbox/core/v2/sharing/LinkSettings;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p3, "collapse"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 204
    if-nez p3, :cond_0

    .line 205
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 207
    :cond_0
    iget-object v0, p1, Lcom/dropbox/core/v2/sharing/LinkSettings;->audience:Lcom/dropbox/core/v2/sharing/LinkAudience;

    if-eqz v0, :cond_1

    .line 208
    const-string v0, "audience"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 209
    sget-object v0, Lcom/dropbox/core/v2/sharing/LinkAudience$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/LinkAudience$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/LinkSettings;->audience:Lcom/dropbox/core/v2/sharing/LinkAudience;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 211
    :cond_1
    iget-object v0, p1, Lcom/dropbox/core/v2/sharing/LinkSettings;->expiry:Lcom/dropbox/core/v2/sharing/LinkExpiry;

    if-eqz v0, :cond_2

    .line 212
    const-string v0, "expiry"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 213
    sget-object v0, Lcom/dropbox/core/v2/sharing/LinkExpiry$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/LinkExpiry$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/LinkSettings;->expiry:Lcom/dropbox/core/v2/sharing/LinkExpiry;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 215
    :cond_2
    iget-object v0, p1, Lcom/dropbox/core/v2/sharing/LinkSettings;->password:Lcom/dropbox/core/v2/sharing/LinkPassword;

    if-eqz v0, :cond_3

    .line 216
    const-string v0, "password"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 217
    sget-object v0, Lcom/dropbox/core/v2/sharing/LinkPassword$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/LinkPassword$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/LinkSettings;->password:Lcom/dropbox/core/v2/sharing/LinkPassword;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 219
    :cond_3
    if-nez p3, :cond_4

    .line 220
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 222
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
    .line 199
    check-cast p1, Lcom/dropbox/core/v2/sharing/LinkSettings;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/sharing/LinkSettings$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/LinkSettings;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    return-void
.end method
