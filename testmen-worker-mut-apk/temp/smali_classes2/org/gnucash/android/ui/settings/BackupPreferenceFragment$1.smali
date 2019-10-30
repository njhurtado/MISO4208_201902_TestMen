.class final Lorg/gnucash/android/ui/settings/BackupPreferenceFragment$1;
.super Ljava/lang/Object;
.source "BackupPreferenceFragment.java"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/gnucash/android/ui/settings/BackupPreferenceFragment;->getGoogleApiClient(Landroid/content/Context;)Lcom/google/android/gms/common/api/GoogleApiClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 345
    iput-object p1, p0, Lorg/gnucash/android/ui/settings/BackupPreferenceFragment$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 4
    .param p1, "connectionResult"    # Lcom/google/android/gms/common/ConnectionResult;

    .prologue
    .line 348
    const-class v1, Lorg/gnucash/android/ui/settings/PreferenceActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Connection to Google Drive failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->hasResolution()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/gnucash/android/ui/settings/BackupPreferenceFragment$1;->val$context:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_1

    .line 351
    :try_start_0
    const-class v1, Lorg/gnucash/android/ui/settings/BackupPreferenceFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Trying resolution of Google API connection failure"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    iget-object v1, p0, Lorg/gnucash/android/ui/settings/BackupPreferenceFragment$1;->val$context:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    const/16 v2, 0x12

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/common/ConnectionResult;->startResolutionForResult(Landroid/app/Activity;I)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 361
    :cond_0
    :goto_0
    return-void

    .line 353
    :catch_0
    move-exception v0

    .line 354
    .local v0, "e":Landroid/content/IntentSender$SendIntentException;
    const-class v1, Lorg/gnucash/android/ui/settings/BackupPreferenceFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/IntentSender$SendIntentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    iget-object v1, p0, Lorg/gnucash/android/ui/settings/BackupPreferenceFragment$1;->val$context:Landroid/content/Context;

    const v2, 0x7f0f0208

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 358
    .end local v0    # "e":Landroid/content/IntentSender$SendIntentException;
    :cond_1
    iget-object v1, p0, Lorg/gnucash/android/ui/settings/BackupPreferenceFragment$1;->val$context:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 359
    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v2

    iget-object v1, p0, Lorg/gnucash/android/ui/settings/BackupPreferenceFragment$1;->val$context:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->getErrorDialog(ILandroid/app/Activity;I)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method
