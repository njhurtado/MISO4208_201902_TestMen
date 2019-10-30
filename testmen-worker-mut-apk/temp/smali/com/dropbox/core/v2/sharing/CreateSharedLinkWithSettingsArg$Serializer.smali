.class Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsArg$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "CreateSharedLinkWithSettingsArg.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsArg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsArg;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsArg$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 128
    new-instance v0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsArg$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsArg$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsArg$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsArg;
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
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsArg$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 152
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsArg$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v3

    .line 154
    :cond_0
    if-nez v3, :cond_6

    .line 155
    const/4 v0, 0x0

    .line 156
    .local v0, "f_path":Ljava/lang/String;
    const/4 v1, 0x0

    .line 157
    .local v1, "f_settings":Lcom/dropbox/core/v2/sharing/SharedLinkSettings;
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
    const-string v5, "path"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 161
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "f_path":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .restart local v0    # "f_path":Ljava/lang/String;
    goto :goto_0

    .line 163
    :cond_1
    const-string v5, "settings"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 164
    sget-object v5, Lcom/dropbox/core/v2/sharing/SharedLinkSettings$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharedLinkSettings$Serializer;

    invoke-static {v5}, Lcom/dropbox/core/stone/StoneSerializers;->nullableStruct(Lcom/dropbox/core/stone/StructSerializer;)Lcom/dropbox/core/stone/StructSerializer;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/dropbox/core/stone/StructSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "f_settings":Lcom/dropbox/core/v2/sharing/SharedLinkSettings;
    check-cast v1, Lcom/dropbox/core/v2/sharing/SharedLinkSettings;

    .restart local v1    # "f_settings":Lcom/dropbox/core/v2/sharing/SharedLinkSettings;
    goto :goto_0

    .line 167
    :cond_2
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsArg$Serializer;->skipValue(Lcom/fasterxml/jackson/core/JsonParser;)V

    goto :goto_0

    .line 170
    .end local v2    # "field":Ljava/lang/String;
    :cond_3
    if-nez v0, :cond_4

    .line 171
    new-instance v5, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v6, "Required field \"path\" missing."

    invoke-direct {v5, p1, v6}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v5

    .line 173
    :cond_4
    new-instance v4, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsArg;

    invoke-direct {v4, v0, v1}, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsArg;-><init>(Ljava/lang/String;Lcom/dropbox/core/v2/sharing/SharedLinkSettings;)V

    .line 178
    .local v4, "value":Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsArg;
    if-nez p2, :cond_5

    .line 179
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsArg$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 181
    :cond_5
    return-object v4

    .line 176
    .end local v0    # "f_path":Ljava/lang/String;
    .end local v1    # "f_settings":Lcom/dropbox/core/v2/sharing/SharedLinkSettings;
    .end local v4    # "value":Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsArg;
    :cond_6
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
    .line 127
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsArg$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsArg;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsArg;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 2
    .param p1, "value"    # Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsArg;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p3, "collapse"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 132
    if-nez p3, :cond_0

    .line 133
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 135
    :cond_0
    const-string v0, "path"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 136
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsArg;->path:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 137
    iget-object v0, p1, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsArg;->settings:Lcom/dropbox/core/v2/sharing/SharedLinkSettings;

    if-eqz v0, :cond_1

    .line 138
    const-string v0, "settings"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 139
    sget-object v0, Lcom/dropbox/core/v2/sharing/SharedLinkSettings$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharedLinkSettings$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullableStruct(Lcom/dropbox/core/stone/StructSerializer;)Lcom/dropbox/core/stone/StructSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsArg;->settings:Lcom/dropbox/core/v2/sharing/SharedLinkSettings;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StructSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 141
    :cond_1
    if-nez p3, :cond_2

    .line 142
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 144
    :cond_2
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
    .line 127
    check-cast p1, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsArg;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsArg$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsArg;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    return-void
.end method
