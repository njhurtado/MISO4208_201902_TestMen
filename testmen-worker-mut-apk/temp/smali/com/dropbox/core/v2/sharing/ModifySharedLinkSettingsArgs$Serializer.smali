.class Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsArgs$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "ModifySharedLinkSettingsArgs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsArgs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsArgs;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsArgs$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 143
    new-instance v0, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsArgs$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsArgs$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsArgs$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsArgs$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 142
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsArgs;
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
    .line 164
    const/4 v4, 0x0

    .line 165
    .local v4, "tag":Ljava/lang/String;
    if-nez p2, :cond_0

    .line 166
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsArgs$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 167
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsArgs$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v4

    .line 169
    :cond_0
    if-nez v4, :cond_8

    .line 170
    const/4 v2, 0x0

    .line 171
    .local v2, "f_url":Ljava/lang/String;
    const/4 v1, 0x0

    .line 172
    .local v1, "f_settings":Lcom/dropbox/core/v2/sharing/SharedLinkSettings;
    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 173
    .local v0, "f_removeExpiration":Ljava/lang/Boolean;
    :goto_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v6

    sget-object v7, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v6, v7, :cond_4

    .line 174
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v3

    .line 175
    .local v3, "field":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 176
    const-string v6, "url"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 177
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "f_url":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .restart local v2    # "f_url":Ljava/lang/String;
    goto :goto_0

    .line 179
    :cond_1
    const-string v6, "settings"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 180
    sget-object v6, Lcom/dropbox/core/v2/sharing/SharedLinkSettings$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharedLinkSettings$Serializer;

    invoke-virtual {v6, p1}, Lcom/dropbox/core/v2/sharing/SharedLinkSettings$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "f_settings":Lcom/dropbox/core/v2/sharing/SharedLinkSettings;
    check-cast v1, Lcom/dropbox/core/v2/sharing/SharedLinkSettings;

    .restart local v1    # "f_settings":Lcom/dropbox/core/v2/sharing/SharedLinkSettings;
    goto :goto_0

    .line 182
    :cond_2
    const-string v6, "remove_expiration"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 183
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->boolean_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "f_removeExpiration":Ljava/lang/Boolean;
    check-cast v0, Ljava/lang/Boolean;

    .restart local v0    # "f_removeExpiration":Ljava/lang/Boolean;
    goto :goto_0

    .line 186
    :cond_3
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsArgs$Serializer;->skipValue(Lcom/fasterxml/jackson/core/JsonParser;)V

    goto :goto_0

    .line 189
    .end local v3    # "field":Ljava/lang/String;
    :cond_4
    if-nez v2, :cond_5

    .line 190
    new-instance v6, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v7, "Required field \"url\" missing."

    invoke-direct {v6, p1, v7}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v6

    .line 192
    :cond_5
    if-nez v1, :cond_6

    .line 193
    new-instance v6, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v7, "Required field \"settings\" missing."

    invoke-direct {v6, p1, v7}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v6

    .line 195
    :cond_6
    new-instance v5, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsArgs;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-direct {v5, v2, v1, v6}, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsArgs;-><init>(Ljava/lang/String;Lcom/dropbox/core/v2/sharing/SharedLinkSettings;Z)V

    .line 200
    .local v5, "value":Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsArgs;
    if-nez p2, :cond_7

    .line 201
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsArgs$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 203
    :cond_7
    return-object v5

    .line 198
    .end local v0    # "f_removeExpiration":Ljava/lang/Boolean;
    .end local v1    # "f_settings":Lcom/dropbox/core/v2/sharing/SharedLinkSettings;
    .end local v2    # "f_url":Ljava/lang/String;
    .end local v5    # "value":Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsArgs;
    :cond_8
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
    .line 142
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsArgs$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsArgs;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsArgs;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 2
    .param p1, "value"    # Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsArgs;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p3, "collapse"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 147
    if-nez p3, :cond_0

    .line 148
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 150
    :cond_0
    const-string v0, "url"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 151
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsArgs;->url:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 152
    const-string v0, "settings"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 153
    sget-object v0, Lcom/dropbox/core/v2/sharing/SharedLinkSettings$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharedLinkSettings$Serializer;

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsArgs;->settings:Lcom/dropbox/core/v2/sharing/SharedLinkSettings;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/sharing/SharedLinkSettings$Serializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 154
    const-string v0, "remove_expiration"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 155
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->boolean_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-boolean v1, p1, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsArgs;->removeExpiration:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 156
    if-nez p3, :cond_1

    .line 157
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 159
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
    .line 142
    check-cast p1, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsArgs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsArgs$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsArgs;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    return-void
.end method
