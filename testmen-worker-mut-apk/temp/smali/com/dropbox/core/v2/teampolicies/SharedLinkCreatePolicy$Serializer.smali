.class Lcom/dropbox/core/v2/teampolicies/SharedLinkCreatePolicy$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "SharedLinkCreatePolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/teampolicies/SharedLinkCreatePolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/teampolicies/SharedLinkCreatePolicy;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/teampolicies/SharedLinkCreatePolicy$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    new-instance v0, Lcom/dropbox/core/v2/teampolicies/SharedLinkCreatePolicy$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teampolicies/SharedLinkCreatePolicy$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/teampolicies/SharedLinkCreatePolicy$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teampolicies/SharedLinkCreatePolicy$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/teampolicies/SharedLinkCreatePolicy;
    .locals 5
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 81
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    sget-object v4, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v3, v4, :cond_0

    .line 82
    const/4 v0, 0x1

    .line 83
    .local v0, "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/teampolicies/SharedLinkCreatePolicy$Serializer;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    .line 84
    .local v1, "tag":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 91
    :goto_0
    if-nez v1, :cond_1

    .line 92
    new-instance v3, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v4, "Required field missing: .tag"

    invoke-direct {v3, p1, v4}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v3

    .line 87
    .end local v0    # "collapsed":Z
    .end local v1    # "tag":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    .line 88
    .restart local v0    # "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/teampolicies/SharedLinkCreatePolicy$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 89
    invoke-static {p1}, Lcom/dropbox/core/v2/teampolicies/SharedLinkCreatePolicy$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "tag":Ljava/lang/String;
    goto :goto_0

    .line 94
    :cond_1
    const-string v3, "default_public"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 95
    sget-object v2, Lcom/dropbox/core/v2/teampolicies/SharedLinkCreatePolicy;->DEFAULT_PUBLIC:Lcom/dropbox/core/v2/teampolicies/SharedLinkCreatePolicy;

    .line 106
    .local v2, "value":Lcom/dropbox/core/v2/teampolicies/SharedLinkCreatePolicy;
    :goto_1
    if-nez v0, :cond_2

    .line 107
    invoke-static {p1}, Lcom/dropbox/core/v2/teampolicies/SharedLinkCreatePolicy$Serializer;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 108
    invoke-static {p1}, Lcom/dropbox/core/v2/teampolicies/SharedLinkCreatePolicy$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 110
    :cond_2
    return-object v2

    .line 97
    .end local v2    # "value":Lcom/dropbox/core/v2/teampolicies/SharedLinkCreatePolicy;
    :cond_3
    const-string v3, "default_team_only"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 98
    sget-object v2, Lcom/dropbox/core/v2/teampolicies/SharedLinkCreatePolicy;->DEFAULT_TEAM_ONLY:Lcom/dropbox/core/v2/teampolicies/SharedLinkCreatePolicy;

    .restart local v2    # "value":Lcom/dropbox/core/v2/teampolicies/SharedLinkCreatePolicy;
    goto :goto_1

    .line 100
    .end local v2    # "value":Lcom/dropbox/core/v2/teampolicies/SharedLinkCreatePolicy;
    :cond_4
    const-string v3, "team_only"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 101
    sget-object v2, Lcom/dropbox/core/v2/teampolicies/SharedLinkCreatePolicy;->TEAM_ONLY:Lcom/dropbox/core/v2/teampolicies/SharedLinkCreatePolicy;

    .restart local v2    # "value":Lcom/dropbox/core/v2/teampolicies/SharedLinkCreatePolicy;
    goto :goto_1

    .line 104
    .end local v2    # "value":Lcom/dropbox/core/v2/teampolicies/SharedLinkCreatePolicy;
    :cond_5
    sget-object v2, Lcom/dropbox/core/v2/teampolicies/SharedLinkCreatePolicy;->OTHER:Lcom/dropbox/core/v2/teampolicies/SharedLinkCreatePolicy;

    .restart local v2    # "value":Lcom/dropbox/core/v2/teampolicies/SharedLinkCreatePolicy;
    goto :goto_1
.end method

.method public bridge synthetic deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/teampolicies/SharedLinkCreatePolicy$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/teampolicies/SharedLinkCreatePolicy;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/teampolicies/SharedLinkCreatePolicy;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 2
    .param p1, "value"    # Lcom/dropbox/core/v2/teampolicies/SharedLinkCreatePolicy;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 57
    sget-object v0, Lcom/dropbox/core/v2/teampolicies/SharedLinkCreatePolicy$1;->$SwitchMap$com$dropbox$core$v2$teampolicies$SharedLinkCreatePolicy:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/teampolicies/SharedLinkCreatePolicy;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 71
    const-string v0, "other"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    .line 74
    :goto_0
    return-void

    .line 59
    :pswitch_0
    const-string v0, "default_public"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 63
    :pswitch_1
    const-string v0, "default_team_only"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 67
    :pswitch_2
    const-string v0, "team_only"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 57
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 52
    check-cast p1, Lcom/dropbox/core/v2/teampolicies/SharedLinkCreatePolicy;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/teampolicies/SharedLinkCreatePolicy$Serializer;->serialize(Lcom/dropbox/core/v2/teampolicies/SharedLinkCreatePolicy;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
