.class final Lcom/dropbox/core/stone/StoneSerializers$ByteArraySerializer;
.super Lcom/dropbox/core/stone/StoneSerializer;
.source "StoneSerializers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/stone/StoneSerializers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ByteArraySerializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StoneSerializer",
        "<[B>;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/stone/StoneSerializers$ByteArraySerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 155
    new-instance v0, Lcom/dropbox/core/stone/StoneSerializers$ByteArraySerializer;

    invoke-direct {v0}, Lcom/dropbox/core/stone/StoneSerializers$ByteArraySerializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/stone/StoneSerializers$ByteArraySerializer;->INSTANCE:Lcom/dropbox/core/stone/StoneSerializers$ByteArraySerializer;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 154
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
    .line 154
    invoke-virtual {p0, p1}, Lcom/dropbox/core/stone/StoneSerializers$ByteArraySerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)[B

    move-result-object v0

    return-object v0
.end method

.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;)[B
    .locals 1
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 164
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getBinaryValue()[B

    move-result-object v0

    .line 165
    .local v0, "value":[B
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 166
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
    .line 154
    check-cast p1, [B

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/stone/StoneSerializers$ByteArraySerializer;->serialize([BLcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method

.method public serialize([BLcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 0
    .param p1, "value"    # [B
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 159
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeBinary([B)V

    .line 160
    return-void
.end method
