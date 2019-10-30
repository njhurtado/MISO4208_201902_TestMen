.class public Lorg/apache/commons/logging/impl/SLF4JLogFactory;
.super Lorg/apache/commons/logging/LogFactory;
.source "SLF4JLogFactory.java"


# static fields
.field public static final LOG_PROPERTY:Ljava/lang/String; = "org.apache.commons.logging.Log"


# instance fields
.field protected attributes:Ljava/util/Hashtable;

.field loggerMap:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Lorg/apache/commons/logging/LogFactory;-><init>()V

    .line 83
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/logging/impl/SLF4JLogFactory;->attributes:Ljava/util/Hashtable;

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/logging/impl/SLF4JLogFactory;->loggerMap:Ljava/util/Map;

    .line 68
    return-void
.end method


# virtual methods
.method public getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 96
    iget-object v0, p0, Lorg/apache/commons/logging/impl/SLF4JLogFactory;->attributes:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getAttributeNames()[Ljava/lang/String;
    .locals 5

    .prologue
    .line 107
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 108
    .local v2, "names":Ljava/util/List;
    iget-object v4, p0, Lorg/apache/commons/logging/impl/SLF4JLogFactory;->attributes:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 109
    .local v1, "keys":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 110
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 112
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    new-array v3, v4, [Ljava/lang/String;

    .line 113
    .local v3, "results":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v4, v3

    if-ge v0, v4, :cond_1

    .line 114
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v3, v0

    .line 113
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 116
    :cond_1
    return-object v3
.end method

.method public getInstance(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;
    .locals 1
    .param p1, "clazz"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/logging/LogConfigurationException;
        }
    .end annotation

    .prologue
    .line 132
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/logging/impl/SLF4JLogFactory;->getInstance(Ljava/lang/String;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    return-object v0
.end method

.method public getInstance(Ljava/lang/String;)Lorg/apache/commons/logging/Log;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/logging/LogConfigurationException;
        }
    .end annotation

    .prologue
    .line 151
    const/4 v1, 0x0

    .line 153
    .local v1, "instance":Lorg/apache/commons/logging/Log;
    iget-object v5, p0, Lorg/apache/commons/logging/impl/SLF4JLogFactory;->loggerMap:Ljava/util/Map;

    monitor-enter v5

    .line 154
    :try_start_0
    iget-object v4, p0, Lorg/apache/commons/logging/impl/SLF4JLogFactory;->loggerMap:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lorg/apache/commons/logging/Log;

    move-object v1, v0

    .line 155
    if-nez v1, :cond_0

    .line 156
    invoke-static {p1}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/String;)Lorg/slf4j/Logger;

    move-result-object v3

    .line 157
    .local v3, "logger":Lorg/slf4j/Logger;
    instance-of v4, v3, Lorg/slf4j/spi/LocationAwareLogger;

    if-eqz v4, :cond_1

    .line 158
    new-instance v2, Lorg/apache/commons/logging/impl/SLF4JLocationAwareLog;

    check-cast v3, Lorg/slf4j/spi/LocationAwareLogger;

    .end local v3    # "logger":Lorg/slf4j/Logger;
    invoke-direct {v2, v3}, Lorg/apache/commons/logging/impl/SLF4JLocationAwareLog;-><init>(Lorg/slf4j/spi/LocationAwareLogger;)V

    .end local v1    # "instance":Lorg/apache/commons/logging/Log;
    .local v2, "instance":Lorg/apache/commons/logging/Log;
    move-object v1, v2

    .line 162
    .end local v2    # "instance":Lorg/apache/commons/logging/Log;
    .restart local v1    # "instance":Lorg/apache/commons/logging/Log;
    :goto_0
    iget-object v4, p0, Lorg/apache/commons/logging/impl/SLF4JLogFactory;->loggerMap:Ljava/util/Map;

    invoke-interface {v4, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    :cond_0
    monitor-exit v5

    .line 165
    return-object v1

    .line 160
    .restart local v3    # "logger":Lorg/slf4j/Logger;
    :cond_1
    new-instance v2, Lorg/apache/commons/logging/impl/SLF4JLog;

    invoke-direct {v2, v3}, Lorg/apache/commons/logging/impl/SLF4JLog;-><init>(Lorg/slf4j/Logger;)V

    .end local v1    # "instance":Lorg/apache/commons/logging/Log;
    .restart local v2    # "instance":Lorg/apache/commons/logging/Log;
    move-object v1, v2

    .end local v2    # "instance":Lorg/apache/commons/logging/Log;
    .restart local v1    # "instance":Lorg/apache/commons/logging/Log;
    goto :goto_0

    .line 164
    .end local v3    # "logger":Lorg/slf4j/Logger;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public release()V
    .locals 3

    .prologue
    .line 185
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WARN: The method "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lorg/apache/commons/logging/impl/SLF4JLogFactory;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#release() was invoked."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 187
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "WARN: Please see http://www.slf4j.org/codes.html#release for an explanation."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 189
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->flush()V

    .line 190
    return-void
.end method

.method public removeAttribute(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 200
    iget-object v0, p0, Lorg/apache/commons/logging/impl/SLF4JLogFactory;->attributes:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 216
    if-nez p2, :cond_0

    .line 217
    iget-object v0, p0, Lorg/apache/commons/logging/impl/SLF4JLogFactory;->attributes:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    :goto_0
    return-void

    .line 219
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/logging/impl/SLF4JLogFactory;->attributes:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
