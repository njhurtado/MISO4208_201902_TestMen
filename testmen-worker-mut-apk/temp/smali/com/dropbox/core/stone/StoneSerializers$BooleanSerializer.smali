.class final Lcom/dropbox/core/stone/StoneSerializers$BooleanSerializer;
.super Lcom/dropbox/core/stone/StoneSerializer;
.source "StoneSerializers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/stone/StoneSerializers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BooleanSerializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StoneSerializer",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/stone/StoneSerializers$BooleanSerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 139
    new-instance v0, Lcom/dropbox/core/stone/StoneSerializers$BooleanSerializer;

    invoke-direct {v0}, Lcom/dropbox/core/stone/StoneSerializers$BooleanSerializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/stone/StoneSerializers$BooleanSerializer;->INSTANCE:Lcom/dropbox/core/stone/StoneSerializers$BooleanSerializer;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/dropbox/core/stone/StoneSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 148
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getBooleanValue()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 149
    .local v0, "value":Ljava/lang/Boolean;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 150
    return-object v0
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
    .line 138
    invoke-virtual {p0, p1}, Lcom/dropbox/core/stone/StoneSerializers$BooleanSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Ljava/lang/Boolean;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/Boolean;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 143
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeBoolean(Z)V

    .line 144
    return-void
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
    .line 138
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/stone/StoneSerializers$BooleanSerializer;->serialize(Ljava/lang/Boolean;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
