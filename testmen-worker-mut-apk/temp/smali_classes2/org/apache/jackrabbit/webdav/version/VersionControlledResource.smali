.class public interface abstract Lorg/apache/jackrabbit/webdav/version/VersionControlledResource;
.super Ljava/lang/Object;
.source "VersionControlledResource.java"

# interfaces
.implements Lorg/apache/jackrabbit/webdav/version/VersionableResource;


# static fields
.field public static final ACTIVITY_SET:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

.field public static final AUTO_MERGE_SET:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

.field public static final AUTO_VERSION:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

.field public static final BASELINE_CONTROLLED_COLLECTION:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

.field public static final CHECKED_IN:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

.field public static final CHECKED_OUT:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

.field public static final CHECKIN_FORK:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

.field public static final CHECKOUT_FORK:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

.field public static final ECLIPSED_SET:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

.field public static final MERGE_SET:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

.field public static final PREDECESSOR_SET:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

.field public static final SUBBASELINE_SET:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

.field public static final UNRESERVED:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

.field public static final VERSION_HISTORY:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

.field public static final methods_checkedIn:Ljava/lang/String; = "CHECKOUT, UPDATE, MERGE, LABEL"

.field public static final methods_checkedOut:Ljava/lang/String; = "CHECKIN, MERGE"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 114
    const-string v0, "auto-version"

    sget-object v1, Lorg/apache/jackrabbit/webdav/version/DeltaVConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v0, v1}, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->create(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/version/VersionControlledResource;->AUTO_VERSION:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    .line 125
    const-string v0, "version-history"

    sget-object v1, Lorg/apache/jackrabbit/webdav/version/DeltaVConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v0, v1}, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->create(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/version/VersionControlledResource;->VERSION_HISTORY:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    .line 138
    const-string v0, "checked-in"

    sget-object v1, Lorg/apache/jackrabbit/webdav/version/DeltaVConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v0, v1}, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->create(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/version/VersionControlledResource;->CHECKED_IN:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    .line 152
    const-string v0, "checked-out"

    sget-object v1, Lorg/apache/jackrabbit/webdav/version/DeltaVConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v0, v1}, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->create(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/version/VersionControlledResource;->CHECKED_OUT:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    .line 168
    const-string v0, "predecessor-set"

    sget-object v1, Lorg/apache/jackrabbit/webdav/version/DeltaVConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v0, v1}, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->create(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/version/VersionControlledResource;->PREDECESSOR_SET:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    .line 174
    const-string v0, "checkin-fork"

    sget-object v1, Lorg/apache/jackrabbit/webdav/version/DeltaVConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v0, v1}, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->create(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/version/VersionControlledResource;->CHECKIN_FORK:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    .line 180
    const-string v0, "checkout-fork"

    sget-object v1, Lorg/apache/jackrabbit/webdav/version/DeltaVConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v0, v1}, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->create(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/version/VersionControlledResource;->CHECKOUT_FORK:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    .line 195
    const-string v0, "merge-set"

    sget-object v1, Lorg/apache/jackrabbit/webdav/version/DeltaVConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v0, v1}, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->create(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/version/VersionControlledResource;->MERGE_SET:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    .line 209
    const-string v0, "auto-merge-set"

    sget-object v1, Lorg/apache/jackrabbit/webdav/version/DeltaVConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v0, v1}, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->create(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/version/VersionControlledResource;->AUTO_MERGE_SET:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    .line 235
    const-string v0, "activity-set"

    sget-object v1, Lorg/apache/jackrabbit/webdav/version/DeltaVConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v0, v1}, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->create(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/version/VersionControlledResource;->UNRESERVED:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    .line 245
    const-string v0, "activity-set"

    sget-object v1, Lorg/apache/jackrabbit/webdav/version/DeltaVConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v0, v1}, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->create(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/version/VersionControlledResource;->ACTIVITY_SET:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    .line 262
    const-string v0, "eclipsed-set"

    sget-object v1, Lorg/apache/jackrabbit/webdav/version/DeltaVConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v0, v1}, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->create(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/version/VersionControlledResource;->ECLIPSED_SET:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    .line 282
    const-string v0, "baseline-controlled-collection"

    sget-object v1, Lorg/apache/jackrabbit/webdav/version/DeltaVConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v0, v1}, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->create(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/version/VersionControlledResource;->BASELINE_CONTROLLED_COLLECTION:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    .line 297
    const-string v0, "subbaseline-set"

    sget-object v1, Lorg/apache/jackrabbit/webdav/version/DeltaVConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v0, v1}, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->create(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/version/VersionControlledResource;->SUBBASELINE_SET:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    return-void
.end method


# virtual methods
.method public abstract checkin()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/jackrabbit/webdav/DavException;
        }
    .end annotation
.end method

.method public abstract checkout()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/jackrabbit/webdav/DavException;
        }
    .end annotation
.end method

.method public abstract getVersionHistory()Lorg/apache/jackrabbit/webdav/version/VersionHistoryResource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/jackrabbit/webdav/DavException;
        }
    .end annotation
.end method

.method public abstract label(Lorg/apache/jackrabbit/webdav/version/LabelInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/jackrabbit/webdav/DavException;
        }
    .end annotation
.end method

.method public abstract merge(Lorg/apache/jackrabbit/webdav/version/MergeInfo;)Lorg/apache/jackrabbit/webdav/MultiStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/jackrabbit/webdav/DavException;
        }
    .end annotation
.end method

.method public abstract uncheckout()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/jackrabbit/webdav/DavException;
        }
    .end annotation
.end method

.method public abstract update(Lorg/apache/jackrabbit/webdav/version/UpdateInfo;)Lorg/apache/jackrabbit/webdav/MultiStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/jackrabbit/webdav/DavException;
        }
    .end annotation
.end method
