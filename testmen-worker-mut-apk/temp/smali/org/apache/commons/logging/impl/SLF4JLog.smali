.class public Lorg/apache/commons/logging/impl/SLF4JLog;
.super Ljava/lang/Object;
.source "SLF4JLog.java"

# interfaces
.implements Lorg/apache/commons/logging/Log;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x9726f120d64bfe9L


# instance fields
.field private transient logger:Lorg/slf4j/Logger;

.field protected name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/slf4j/Logger;)V
    .locals 1
    .param p1, "logger"    # Lorg/slf4j/Logger;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lorg/apache/commons/logging/impl/SLF4JLog;->logger:Lorg/slf4j/Logger;

    .line 49
    invoke-interface {p1}, Lorg/slf4j/Logger;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/logging/impl/SLF4JLog;->name:Ljava/lang/String;

    .line 50
    return-void
.end method


# virtual methods
.method public debug(Ljava/lang/Object;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/Object;

    .prologue
    .line 128
    iget-object v0, p0, Lorg/apache/commons/logging/impl/SLF4JLog;->logger:Lorg/slf4j/Logger;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 129
    return-void
.end method

.method public debug(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 141
    iget-object v0, p0, Lorg/apache/commons/logging/impl/SLF4JLog;->logger:Lorg/slf4j/Logger;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 142
    return-void
.end method

.method public error(Ljava/lang/Object;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/Object;

    .prologue
    .line 200
    iget-object v0, p0, Lorg/apache/commons/logging/impl/SLF4JLog;->logger:Lorg/slf4j/Logger;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 201
    return-void
.end method

.method public error(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 213
    iget-object v0, p0, Lorg/apache/commons/logging/impl/SLF4JLog;->logger:Lorg/slf4j/Logger;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 214
    return-void
.end method

.method public fatal(Ljava/lang/Object;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/Object;

    .prologue
    .line 224
    iget-object v0, p0, Lorg/apache/commons/logging/impl/SLF4JLog;->logger:Lorg/slf4j/Logger;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 225
    return-void
.end method

.method public fatal(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 237
    iget-object v0, p0, Lorg/apache/commons/logging/impl/SLF4JLog;->logger:Lorg/slf4j/Logger;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 238
    return-void
.end method

.method public info(Ljava/lang/Object;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/Object;

    .prologue
    .line 152
    iget-object v0, p0, Lorg/apache/commons/logging/impl/SLF4JLog;->logger:Lorg/slf4j/Logger;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 153
    return-void
.end method

.method public info(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 165
    iget-object v0, p0, Lorg/apache/commons/logging/impl/SLF4JLog;->logger:Lorg/slf4j/Logger;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 166
    return-void
.end method

.method public isDebugEnabled()Z
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lorg/apache/commons/logging/impl/SLF4JLog;->logger:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    return v0
.end method

.method public isErrorEnabled()Z
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lorg/apache/commons/logging/impl/SLF4JLog;->logger:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isErrorEnabled()Z

    move-result v0

    return v0
.end method

.method public isFatalEnabled()Z
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lorg/apache/commons/logging/impl/SLF4JLog;->logger:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isErrorEnabled()Z

    move-result v0

    return v0
.end method

.method public isInfoEnabled()Z
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lorg/apache/commons/logging/impl/SLF4JLog;->logger:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isInfoEnabled()Z

    move-result v0

    return v0
.end method

.method public isTraceEnabled()Z
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lorg/apache/commons/logging/impl/SLF4JLog;->logger:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v0

    return v0
.end method

.method public isWarnEnabled()Z
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lorg/apache/commons/logging/impl/SLF4JLog;->logger:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isWarnEnabled()Z

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
    .line 248
    iget-object v1, p0, Lorg/apache/commons/logging/impl/SLF4JLog;->name:Ljava/lang/String;

    invoke-static {v1}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/String;)Lorg/slf4j/Logger;

    move-result-object v0

    .line 249
    .local v0, "logger":Lorg/slf4j/Logger;
    new-instance v1, Lorg/apache/commons/logging/impl/SLF4JLog;

    invoke-direct {v1, v0}, Lorg/apache/commons/logging/impl/SLF4JLog;-><init>(Lorg/slf4j/Logger;)V

    return-object v1
.end method

.method public trace(Ljava/lang/Object;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/Object;

    .prologue
    .line 104
    iget-object v0, p0, Lorg/apache/commons/logging/impl/SLF4JLog;->logger:Lorg/slf4j/Logger;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method public trace(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 117
    iget-object v0, p0, Lorg/apache/commons/logging/impl/SLF4JLog;->logger:Lorg/slf4j/Logger;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 118
    return-void
.end method

.method public warn(Ljava/lang/Object;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/Object;

    .prologue
    .line 176
    iget-object v0, p0, Lorg/apache/commons/logging/impl/SLF4JLog;->logger:Lorg/slf4j/Logger;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 177
    return-void
.end method

.method public warn(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 189
    iget-object v0, p0, Lorg/apache/commons/logging/impl/SLF4JLog;->logger:Lorg/slf4j/Logger;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 190
    return-void
.end method
