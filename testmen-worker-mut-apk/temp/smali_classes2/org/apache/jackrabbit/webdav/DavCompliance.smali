.class public final Lorg/apache/jackrabbit/webdav/DavCompliance;
.super Ljava/lang/Object;
.source "DavCompliance.java"


# static fields
.field public static final ACCESS_CONTROL:Ljava/lang/String; = "access-control"

.field public static final ACTIVITY:Ljava/lang/String; = "activity"

.field public static final BASELINE:Ljava/lang/String; = "baseline"

.field public static final BIND:Ljava/lang/String; = "bind"

.field public static final CHECKOUT_IN_PLACE:Ljava/lang/String; = "checkout-in-place"

.field public static final LABEL:Ljava/lang/String; = "label"

.field public static final MERGE:Ljava/lang/String; = "merge"

.field public static final OBSERVATION:Ljava/lang/String; = "observation"

.field public static final ORDERED_COLLECTIONS:Ljava/lang/String; = "ordered-collections"

.field public static final UPDATE:Ljava/lang/String; = "update"

.field public static final VERSION_CONTROL:Ljava/lang/String; = "version-control"

.field public static final VERSION_CONTROLLED_COLLECTION:Ljava/lang/String; = "version-controlled-collection"

.field public static final VERSION_HISTORY:Ljava/lang/String; = "version-history"

.field public static final WORKING_RESOURCE:Ljava/lang/String; = "working-resource"

.field public static final WORKSPACE:Ljava/lang/String; = "workspace"

.field public static final _1_:Ljava/lang/String; = "1"

.field public static final _2_:Ljava/lang/String; = "2"

.field public static final _3_:Ljava/lang/String; = "3"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static concatComplianceClasses([Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "complianceClasses"    # [Ljava/lang/String;

    .prologue
    .line 63
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 64
    .local v0, "b":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 65
    if-lez v1, :cond_0

    .line 66
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 68
    :cond_0
    aget-object v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 64
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 70
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
