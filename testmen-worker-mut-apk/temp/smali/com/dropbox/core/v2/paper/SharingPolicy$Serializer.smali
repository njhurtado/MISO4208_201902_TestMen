.class Lcom/dropbox/core/v2/paper/SharingPolicy$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "SharingPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/paper/SharingPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/paper/SharingPolicy;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/paper/SharingPolicy$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 176
    new-instance v0, Lcom/dropbox/core/v2/paper/SharingPolicy$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/paper/SharingPolicy$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/paper/SharingPolicy$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/SharingPolicy$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/paper/SharingPolicy;
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
    .line 199
    const/4 v3, 0x0

    .line 200
    .local v3, "tag":Ljava/lang/String;
    if-nez p2, :cond_0

    .line 201
    invoke-static {p1}, Lcom/dropbox/core/v2/paper/SharingPolicy$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 202
    invoke-static {p1}, Lcom/dropbox/core/v2/paper/SharingPolicy$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v3

    .line 204
    :cond_0
    if-nez v3, :cond_5

    .line 205
    const/4 v0, 0x0

    .line 206
    .local v0, "f_publicSharingPolicy":Lcom/dropbox/core/v2/paper/SharingPublicPolicyType;
    const/4 v1, 0x0

    .line 207
    .local v1, "f_teamSharingPolicy":Lcom/dropbox/core/v2/paper/SharingTeamPolicyType;
    :goto_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v5

    sget-object v6, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v5, v6, :cond_3

    .line 208
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v2

    .line 209
    .local v2, "field":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 210
    const-string v5, "public_sharing_policy"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 211
    sget-object v5, Lcom/dropbox/core/v2/paper/SharingPublicPolicyType$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/SharingPublicPolicyType$Serializer;

    invoke-static {v5}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "f_publicSharingPolicy":Lcom/dropbox/core/v2/paper/SharingPublicPolicyType;
    check-cast v0, Lcom/dropbox/core/v2/paper/SharingPublicPolicyType;

    .restart local v0    # "f_publicSharingPolicy":Lcom/dropbox/core/v2/paper/SharingPublicPolicyType;
    goto :goto_0

    .line 213
    :cond_1
    const-string v5, "team_sharing_policy"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 214
    sget-object v5, Lcom/dropbox/core/v2/paper/SharingTeamPolicyType$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/SharingTeamPolicyType$Serializer;

    invoke-static {v5}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "f_teamSharingPolicy":Lcom/dropbox/core/v2/paper/SharingTeamPolicyType;
    check-cast v1, Lcom/dropbox/core/v2/paper/SharingTeamPolicyType;

    .restart local v1    # "f_teamSharingPolicy":Lcom/dropbox/core/v2/paper/SharingTeamPolicyType;
    goto :goto_0

    .line 217
    :cond_2
    invoke-static {p1}, Lcom/dropbox/core/v2/paper/SharingPolicy$Serializer;->skipValue(Lcom/fasterxml/jackson/core/JsonParser;)V

    goto :goto_0

    .line 220
    .end local v2    # "field":Ljava/lang/String;
    :cond_3
    new-instance v4, Lcom/dropbox/core/v2/paper/SharingPolicy;

    invoke-direct {v4, v0, v1}, Lcom/dropbox/core/v2/paper/SharingPolicy;-><init>(Lcom/dropbox/core/v2/paper/SharingPublicPolicyType;Lcom/dropbox/core/v2/paper/SharingTeamPolicyType;)V

    .line 225
    .local v4, "value":Lcom/dropbox/core/v2/paper/SharingPolicy;
    if-nez p2, :cond_4

    .line 226
    invoke-static {p1}, Lcom/dropbox/core/v2/paper/SharingPolicy$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 228
    :cond_4
    return-object v4

    .line 223
    .end local v0    # "f_publicSharingPolicy":Lcom/dropbox/core/v2/paper/SharingPublicPolicyType;
    .end local v1    # "f_teamSharingPolicy":Lcom/dropbox/core/v2/paper/SharingTeamPolicyType;
    .end local v4    # "value":Lcom/dropbox/core/v2/paper/SharingPolicy;
    :cond_5
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
    .line 175
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/paper/SharingPolicy$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/paper/SharingPolicy;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/paper/SharingPolicy;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 2
    .param p1, "value"    # Lcom/dropbox/core/v2/paper/SharingPolicy;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p3, "collapse"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 180
    if-nez p3, :cond_0

    .line 181
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 183
    :cond_0
    iget-object v0, p1, Lcom/dropbox/core/v2/paper/SharingPolicy;->publicSharingPolicy:Lcom/dropbox/core/v2/paper/SharingPublicPolicyType;

    if-eqz v0, :cond_1

    .line 184
    const-string v0, "public_sharing_policy"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 185
    sget-object v0, Lcom/dropbox/core/v2/paper/SharingPublicPolicyType$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/SharingPublicPolicyType$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/paper/SharingPolicy;->publicSharingPolicy:Lcom/dropbox/core/v2/paper/SharingPublicPolicyType;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 187
    :cond_1
    iget-object v0, p1, Lcom/dropbox/core/v2/paper/SharingPolicy;->teamSharingPolicy:Lcom/dropbox/core/v2/paper/SharingTeamPolicyType;

    if-eqz v0, :cond_2

    .line 188
    const-string v0, "team_sharing_policy"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 189
    sget-object v0, Lcom/dropbox/core/v2/paper/SharingTeamPolicyType$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/SharingTeamPolicyType$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/paper/SharingPolicy;->teamSharingPolicy:Lcom/dropbox/core/v2/paper/SharingTeamPolicyType;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 191
    :cond_2
    if-nez p3, :cond_3

    .line 192
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 194
    :cond_3
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
    .line 175
    check-cast p1, Lcom/dropbox/core/v2/paper/SharingPolicy;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/paper/SharingPolicy$Serializer;->serialize(Lcom/dropbox/core/v2/paper/SharingPolicy;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    return-void
.end method
