.class public Lorg/apache/commons/logging/impl/SLF4JLocationAwareLog;
.super Ljava/lang/Object;
.source "SLF4JLocationAwareLog.java"

# interfaces
.implements Lorg/apache/commons/logging/Log;
.implements Ljava/io/Serializable;


# static fields
.field private static final FQCN:Ljava/lang/String;

.field private static final serialVersionUID:J = -0x210477367b511386L


# instance fields
.field private transient logger:Lorg/slf4j/spi/LocationAwareLogger;

.field protected name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-class v0, Lorg/apache/commons/logging/impl/SLF4JLocationAwareLog;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/logging/impl/SLF4JLocationAwareLog;->FQCN:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lorg/slf4j/spi/LocationAwareLogger;)V
    .locals 1
    .param p1, "logger"    # Lorg/slf4j/spi/LocationAwareLogger;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lorg/apache/commons/logging/impl/SLF4JLocationAwareLog;->logger:Lorg/slf4j/spi/LocationAwareLogger;

    .line 52
    invoke-interface {p1}, Lorg/slf4j/spi/LocationAwareLogger;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/logging/impl/SLF4JLocationAwareLog;->name:Ljava/lang/String;

    .line 53
    return-void
.end method


# virtual methods
.method public debug(Ljava/lang/Object;)V
    .locals 7
    .param p1, "message"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 133
    iget-object v0, p0, Lorg/apache/commons/logging/impl/SLF4JLocationAwareLog;->logger:Lorg/slf4j/spi/LocationAwareLogger;

    sget-object v2, Lorg/apache/commons/logging/impl/SLF4JLocationAwareLog;->FQCN:Ljava/lang/String;

    const/16 v3, 0xa

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object v5, v1

    move-object v6, v1

    invoke-interface/range {v0 .. v6}, Lorg/slf4j/spi/LocationAwareLogger;->log(Lorg/slf4j/Marker;Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 135
    return-void
.end method

.method public debug(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 7
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    const/4 v1, 0x0

    .line 147
    iget-object v0, p0, Lorg/apache/commons/logging/impl/SLF4JLocationAwareLog;->logger:Lorg/slf4j/spi/LocationAwareLogger;

    sget-object v2, Lorg/apache/commons/logging/impl/SLF4JLocationAwareLog;->FQCN:Ljava/lang/String;

    const/16 v3, 0xa

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object v5, v1

    move-object v6, p2

    invoke-interface/range {v0 .. v6}, Lorg/slf4j/spi/LocationAwareLogger;->log(Lorg/slf4j/Marker;Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 149
    return-void
.end method

.method public error(Ljava/lang/Object;)V
    .locals 7
    .param p1, "message"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 211
    iget-object v0, p0, Lorg/apache/commons/logging/impl/SLF4JLocationAwareLog;->logger:Lorg/slf4j/spi/LocationAwareLogger;

    sget-object v2, Lorg/apache/commons/logging/impl/SLF4JLocationAwareLog;->FQCN:Ljava/lang/String;

    const/16 v3, 0x28

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object v5, v1

    move-object v6, v1

    invoke-interface/range {v0 .. v6}, Lorg/slf4j/spi/LocationAwareLogger;->log(Lorg/slf4j/Marker;Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 213
    return-void
.end method

.method public error(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 7
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    const/4 v1, 0x0

    .line 225
    iget-object v0, p0, Lorg/apache/commons/logging/impl/SLF4JLocationAwareLog;->logger:Lorg/slf4j/spi/LocationAwareLogger;

    sget-object v2, Lorg/apache/commons/logging/impl/SLF4JLocationAwareLog;->FQCN:Ljava/lang/String;

    const/16 v3, 0x28

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object v5, v1

    move-object v6, p2

    invoke-interface/range {v0 .. v6}, Lorg/slf4j/spi/LocationAwareLogger;->log(Lorg/slf4j/Marker;Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 227
    return-void
.end method

.method public fatal(Ljava/lang/Object;)V
    .locals 7
    .param p1, "message"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 237
    iget-object v0, p0, Lorg/apache/commons/logging/impl/SLF4JLocationAwareLog;->logger:Lorg/slf4j/spi/LocationAwareLogger;

    sget-object v2, Lorg/apache/commons/logging/impl/SLF4JLocationAwareLog;->FQCN:Ljava/lang/String;

    const/16 v3, 0x28

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object v5, v1

    move-object v6, v1

    invoke-interface/range {v0 .. v6}, Lorg/slf4j/spi/LocationAwareLogger;->log(Lorg/slf4j/Marker;Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 239
    return-void
.end method

.method public fatal(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 7
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    const/4 v1, 0x0

    .line 251
    iget-object v0, p0, Lorg/apache/commons/logging/impl/SLF4JLocationAwareLog;->logger:Lorg/slf4j/spi/LocationAwareLogger;

    sget-object v2, Lorg/apache/commons/logging/impl/SLF4JLocationAwareLog;->FQCN:Ljava/lang/String;

    const/16 v3, 0x28

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object v5, v1

    move-object v6, p2

    invoke-interface/range {v0 .. v6}, Lorg/slf4j/spi/LocationAwareLogger;->log(Lorg/slf4j/Marker;Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 253
    return-void
.end method

.method public info(Ljava/lang/Object;)V
    .locals 7
    .param p1, "message"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 159
    iget-object v0, p0, Lorg/apache/commons/logging/impl/SLF4JLocationAwareLog;->logger:Lorg/slf4j/spi/LocationAwareLogger;

    sget-object v2, Lorg/apache/commons/logging/impl/SLF4JLocationAwareLog;->FQCN:Ljava/lang/String;

    const/16 v3, 0x14

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object v5, v1

    move-object v6, v1

    invoke-interface/range {v0 .. v6}, Lorg/slf4j/spi/LocationAwareLogger;->log(Lorg/slf4j/Marker;Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 161
    return-void
.end method

.method public info(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 7
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    const/4 v1, 0x0

    .line 173
    iget-object v0, p0, Lorg/apache/commons/logging/impl/SLF4JLocationAwareLog;->logger:Lorg/slf4j/spi/LocationAwareLogger;

    sget-object v2, Lorg/apache/commons/logging/impl/SLF4JLocationAwareLog;->FQCN:Ljava/lang/String;

    const/16 v3, 0x14

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object v5, v1

    move-object v6, p2

    invoke-interface/range {v0 .. v6}, Lorg/slf4j/spi/LocationAwareLogger;->log(Lorg/slf4j/Marker;Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 175
    return-void
.end method

.method public isDebugEnabled()Z
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lorg/apache/commons/logging/impl/SLF4JLocationAwareLog;->logger:Lorg/slf4j/spi/LocationAwareLogger;

    invoke-interface {v0}, Lorg/slf4j/spi/LocationAwareLogger;->isDebugEnabled()Z

    move-result v0

    return v0
.end method

.method public isErrorEnabled()Z
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lorg/apache/commons/logging/impl/SLF4JLocationAwareLog;->logger:Lorg/slf4j/spi/LocationAwareLogger;

    invoke-interface {v0}, Lorg/slf4j/spi/LocationAwareLogger;->isErrorEnabled()Z

    move-result v0

    return v0
.end method

.method public isFatalEnabled()Z
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lorg/apache/commons/logging/impl/SLF4JLocationAwareLog;->logger:Lorg/slf4j/spi/LocationAwareLogger;

    invoke-interface {v0}, Lorg/slf4j/spi/LocationAwareLogger;->isErrorEnabled()Z

    move-result v0

    return v0
.end method

.method public isInfoEnabled()Z
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lorg/apache/commons/logging/impl/SLF4JLocationAwareLog;->logger:Lorg/slf4j/spi/LocationAwareLogger;

    invoke-interface {v0}, Lorg/slf4j/spi/LocationAwareLogger;->isInfoEnabled()Z

    move-result v0

    return v0
.end method

.method public isTraceEnabled()Z
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lorg/apache/commons/logging/impl/SLF4JLocationAwareLog;->logger:Lorg/slf4j/spi/LocationAwareLogger;

    invoke-interface {v0}, Lorg/slf4j/spi/LocationAwareLogger;->isTraceEnabled()Z

    move-result v0

    return v0
.end method

.method public isWarnEnabled()Z
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lorg/apache/commons/logging/impl/SLF4JLocationAwareLog;->logger:Lorg/slf4j/spi/LocationAwareLogger;

    invoke-interface {v0}, Lorg/slf4j/spi/LocationAwareLogger;->isWarnEnabled()Z

    move-result v0

    return v0
.end method

.method protected readResolve()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 263
    iget-object v1, p0, Lorg/apache/commons/logging/impl/SLF4JLocationAwareLog;->name:Ljava/lang/String;

    invoke-static {v1}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/String;)Lorg/slf4j/Logger;

    move-result-object v0

    .line 264
    .local v0, "logger":Lorg/slf4j/Logger;
    new-instance v1, Lorg/apache/commons/logging/impl/SLF4JLocationAwareLog;

    check-cast v0, Lorg/slf4j/spi/LocationAwareLogger;

    .end local v0    # "logger":Lorg/slf4j/Logger;
    invoke-direct {v1, v0}, Lorg/apache/commons/logging/impl/SLF4JLocationAwareLog;-><init>(Lorg/slf4j/spi/LocationAwareLogger;)V

    return-object v1
.end method

.method public trace(Ljava/lang/Object;)V
    .locals 7
    .param p1, "message"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 107
    iget-object v0, p0, Lorg/apache/commons/logging/impl/SLF4JLocationAwareLog;->logger:Lorg/slf4j/spi/LocationAwareLogger;

    sget-object v2, Lorg/apache/commons/logging/impl/SLF4JLocationAwareLog;->FQCN:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object v5, v1

    move-object v6, v1

    invoke-interface/range {v0 .. v6}, Lorg/slf4j/spi/LocationAwareLogger;->log(Lorg/slf4j/Marker;Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 109
    return-void
.end method

.method public trace(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 7
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    const/4 v1, 0x0

    .line 121
    iget-object v0, p0, Lorg/apache/commons/logging/impl/SLF4JLocationAwareLog;->logger:Lorg/slf4j/spi/LocationAwareLogger;

    sget-object v2, Lorg/apache/commons/logging/impl/SLF4JLocationAwareLog;->FQCN:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object v5, v1

    move-object v6, p2

    invoke-interface/range {v0 .. v6}, Lorg/slf4j/spi/LocationAwareLogger;->log(Lorg/slf4j/Marker;Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 123
    return-void
.end method

.method public warn(Ljava/lang/Object;)V
    .locals 7
    .param p1, "message"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 185
    iget-object v0, p0, Lorg/apache/commons/logging/impl/SLF4JLocationAwareLog;->logger:Lorg/slf4j/spi/LocationAwareLogger;

    sget-object v2, Lorg/apache/commons/logging/impl/SLF4JLocationAwareLog;->FQCN:Ljava/lang/String;

    const/16 v3, 0x1e

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object v5, v1

    move-object v6, v1

    invoke-interface/range {v0 .. v6}, Lorg/slf4j/spi/LocationAwareLogger;->log(Lorg/slf4j/Marker;Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 187
    return-void
.end method

.method public warn(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 7
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    const/4 v1, 0x0

    .line 199
    iget-object v0, p0, Lorg/apache/commons/logging/impl/SLF4JLocationAwareLog;->logger:Lorg/slf4j/spi/LocationAwareLogger;

    sget-object v2, Lorg/apache/commons/logging/impl/SLF4JLocationAwareLog;->FQCN:Ljava/lang/String;

    const/16 v3, 0x1e

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object v5, v1

    move-object v6, p2

    invoke-interface/range {v0 .. v6}, Lorg/slf4j/spi/LocationAwareLogger;->log(Lorg/slf4j/Marker;Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 201
    return-void
.end method
