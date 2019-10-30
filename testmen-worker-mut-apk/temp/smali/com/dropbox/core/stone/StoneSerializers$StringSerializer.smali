.class final Lcom/dropbox/core/stone/StoneSerializers$StringSerializer;
.super Lcom/dropbox/core/stone/StoneSerializer;
.source "StoneSerializers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/stone/StoneSerializers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "StringSerializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StoneSerializer",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/stone/StoneSerializers$StringSerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 171
    new-instance v0, Lcom/dropbox/core/stone/StoneSerializers$StringSerializer;

    invoke-direct {v0}, Lcom/dropbox/core/stone/StoneSerializers$StringSerializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/stone/StoneSerializers$StringSerializer;->INSTANCE:Lcom/dropbox/core/stone/StoneSerializers$StringSerializer;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 170
    invoke-direct {p0}, Lcom/dropbox/core/stone/StoneSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 170
    invoke-virtual {p0, p1}, Lcom/dropbox/core/stone/StoneSerializers$StringSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;
    .locals 1
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 180
    invoke-static {p1}, Lcom/dropbox/core/stone/StoneSerializers$StringSerializer;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v0

    .line 181
    .local v0, "value":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 182
    return-object v0
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
    .line 170
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/stone/StoneSerializers$StringSerializer;->serialize(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method

.method public serialize(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 175
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    .line 176
    return-void
.end method
