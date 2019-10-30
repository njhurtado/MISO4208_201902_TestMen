.class public Landroid/support/v7/preference/PreferenceManager;
.super Ljava/lang/Object;
.source "PreferenceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/preference/PreferenceManager$OnNavigateToScreenListener;,
        Landroid/support/v7/preference/PreferenceManager$OnDisplayPreferenceDialogListener;,
        Landroid/support/v7/preference/PreferenceManager$OnPreferenceTreeClickListener;,
        Landroid/support/v7/preference/PreferenceManager$SimplePreferenceComparisonCallback;,
        Landroid/support/v7/preference/PreferenceManager$PreferenceComparisonCallback;
    }
.end annotation


# static fields
.field public static final KEY_HAS_SET_DEFAULT_VALUES:Ljava/lang/String; = "_has_set_default_values"

.field private static final STORAGE_DEFAULT:I = 0x0

.field private static final STORAGE_DEVICE_PROTECTED:I = 0x1


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEditor:Landroid/content/SharedPreferences$Editor;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mNextId:J

.field private mNoCommit:Z

.field private mOnDisplayPreferenceDialogListener:Landroid/support/v7/preference/PreferenceManager$OnDisplayPreferenceDialogListener;

.field private mOnNavigateToScreenListener:Landroid/support/v7/preference/PreferenceManager$OnNavigateToScreenListener;

.field private mOnPreferenceTreeClickListener:Landroid/support/v7/preference/PreferenceManager$OnPreferenceTreeClickListener;

.field private mPreferenceComparisonCallback:Landroid/support/v7/preference/PreferenceManager$PreferenceComparisonCallback;

.field private mPreferenceDataStore:Landroid/support/v7/preference/PreferenceDataStore;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mPreferenceScreen:Landroid/support/v7/preference/PreferenceScreen;

.field private mSharedPreferences:Landroid/content/SharedPreferences;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mSharedPreferencesMode:I

.field private mSharedPreferencesName:Ljava/lang/String;

.field private mStorage:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/support/v7/preference/PreferenceManager;->mNextId:J

    .line 96
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/preference/PreferenceManager;->mStorage:I

    .line 113
    iput-object p1, p0, Landroid/support/v7/preference/PreferenceManager;->mContext:Landroid/content/Context;

    .line 115
    invoke-static {p1}, Landroid/support/v7/preference/PreferenceManager;->getDefaultSharedPreferencesName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    .line 116
    return-void
.end method

.method public static getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 346
    invoke-static {p0}, Landroid/support/v7/preference/PreferenceManager;->getDefaultSharedPreferencesName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 347
    invoke-static {}, Landroid/support/v7/preference/PreferenceManager;->getDefaultSharedPreferencesMode()I

    move-result v1

    .line 346
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private static getDefaultSharedPreferencesMode()I
    .locals 1

    .prologue
    .line 355
    const/4 v0, 0x0

    return v0
.end method

.method private static getDefaultSharedPreferencesName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 351
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_preferences"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static setDefaultValues(Landroid/content/Context;IZ)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I
    .param p2, "readAgain"    # Z

    .prologue
    .line 423
    invoke-static {p0}, Landroid/support/v7/preference/PreferenceManager;->getDefaultSharedPreferencesName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 424
    invoke-static {}, Landroid/support/v7/preference/PreferenceManager;->getDefaultSharedPreferencesMode()I

    move-result v1

    .line 423
    invoke-static {p0, v0, v1, p1, p2}, Landroid/support/v7/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;Ljava/lang/String;IIZ)V

    .line 425
    return-void
.end method

.method public static setDefaultValues(Landroid/content/Context;Ljava/lang/String;IIZ)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sharedPreferencesName"    # Ljava/lang/String;
    .param p2, "sharedPreferencesMode"    # I
    .param p3, "resId"    # I
    .param p4, "readAgain"    # Z

    .prologue
    const/4 v3, 0x0

    .line 457
    const-string v2, "_has_set_default_values"

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 460
    .local v0, "defaultValueSp":Landroid/content/SharedPreferences;
    if-nez p4, :cond_0

    const-string v2, "_has_set_default_values"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1

    .line 461
    :cond_0
    new-instance v1, Landroid/support/v7/preference/PreferenceManager;

    invoke-direct {v1, p0}, Landroid/support/v7/preference/PreferenceManager;-><init>(Landroid/content/Context;)V

    .line 462
    .local v1, "pm":Landroid/support/v7/preference/PreferenceManager;
    invoke-virtual {v1, p1}, Landroid/support/v7/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    .line 463
    invoke-virtual {v1, p2}, Landroid/support/v7/preference/PreferenceManager;->setSharedPreferencesMode(I)V

    .line 464
    const/4 v2, 0x0

    invoke-virtual {v1, p0, p3, v2}, Landroid/support/v7/preference/PreferenceManager;->inflateFromResource(Landroid/content/Context;ILandroid/support/v7/preference/PreferenceScreen;)Landroid/support/v7/preference/PreferenceScreen;

    .line 466
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "_has_set_default_values"

    const/4 v4, 0x1

    .line 467
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 468
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 470
    .end local v1    # "pm":Landroid/support/v7/preference/PreferenceManager;
    :cond_1
    return-void
.end method

.method private setNoCommit(Z)V
    .locals 1
    .param p1, "noCommit"    # Z

    .prologue
    .line 511
    if-nez p1, :cond_0

    iget-object v0, p0, Landroid/support/v7/preference/PreferenceManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 512
    iget-object v0, p0, Landroid/support/v7/preference/PreferenceManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 514
    :cond_0
    iput-boolean p1, p0, Landroid/support/v7/preference/PreferenceManager;->mNoCommit:Z

    .line 515
    return-void
.end method


# virtual methods
.method public createPreferenceScreen(Landroid/content/Context;)Landroid/support/v7/preference/PreferenceScreen;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 147
    new-instance v0, Landroid/support/v7/preference/PreferenceScreen;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/support/v7/preference/PreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 148
    .local v0, "preferenceScreen":Landroid/support/v7/preference/PreferenceScreen;
    invoke-virtual {v0, p0}, Landroid/support/v7/preference/PreferenceScreen;->onAttachedToHierarchy(Landroid/support/v7/preference/PreferenceManager;)V

    .line 149
    return-object v0
.end method

.method public findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;
    .locals 1
    .param p1, "key"    # Ljava/lang/CharSequence;

    .prologue
    .line 393
    iget-object v0, p0, Landroid/support/v7/preference/PreferenceManager;->mPreferenceScreen:Landroid/support/v7/preference/PreferenceScreen;

    if-nez v0, :cond_0

    .line 394
    const/4 v0, 0x0

    .line 397
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/preference/PreferenceManager;->mPreferenceScreen:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    goto :goto_0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 523
    iget-object v0, p0, Landroid/support/v7/preference/PreferenceManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method getEditor()Landroid/content/SharedPreferences$Editor;
    .locals 1

    .prologue
    .line 482
    iget-object v0, p0, Landroid/support/v7/preference/PreferenceManager;->mPreferenceDataStore:Landroid/support/v7/preference/PreferenceDataStore;

    if-eqz v0, :cond_0

    .line 483
    const/4 v0, 0x0

    .line 493
    :goto_0
    return-object v0

    .line 486
    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/preference/PreferenceManager;->mNoCommit:Z

    if-eqz v0, :cond_2

    .line 487
    iget-object v0, p0, Landroid/support/v7/preference/PreferenceManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-nez v0, :cond_1

    .line 488
    invoke-virtual {p0}, Landroid/support/v7/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/preference/PreferenceManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    .line 491
    :cond_1
    iget-object v0, p0, Landroid/support/v7/preference/PreferenceManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 493
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    goto :goto_0
.end method

.method getNextId()J
    .locals 4

    .prologue
    .line 158
    monitor-enter p0

    .line 159
    :try_start_0
    iget-wide v0, p0, Landroid/support/v7/preference/PreferenceManager;->mNextId:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Landroid/support/v7/preference/PreferenceManager;->mNextId:J

    monitor-exit p0

    return-wide v0

    .line 160
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getOnDisplayPreferenceDialogListener()Landroid/support/v7/preference/PreferenceManager$OnDisplayPreferenceDialogListener;
    .locals 1

    .prologue
    .line 536
    iget-object v0, p0, Landroid/support/v7/preference/PreferenceManager;->mOnDisplayPreferenceDialogListener:Landroid/support/v7/preference/PreferenceManager$OnDisplayPreferenceDialogListener;

    return-object v0
.end method

.method public getOnNavigateToScreenListener()Landroid/support/v7/preference/PreferenceManager$OnNavigateToScreenListener;
    .locals 1

    .prologue
    .line 583
    iget-object v0, p0, Landroid/support/v7/preference/PreferenceManager;->mOnNavigateToScreenListener:Landroid/support/v7/preference/PreferenceManager$OnNavigateToScreenListener;

    return-object v0
.end method

.method public getOnPreferenceTreeClickListener()Landroid/support/v7/preference/PreferenceManager$OnPreferenceTreeClickListener;
    .locals 1

    .prologue
    .line 566
    iget-object v0, p0, Landroid/support/v7/preference/PreferenceManager;->mOnPreferenceTreeClickListener:Landroid/support/v7/preference/PreferenceManager$OnPreferenceTreeClickListener;

    return-object v0
.end method

.method public getPreferenceComparisonCallback()Landroid/support/v7/preference/PreferenceManager$PreferenceComparisonCallback;
    .locals 1

    .prologue
    .line 527
    iget-object v0, p0, Landroid/support/v7/preference/PreferenceManager;->mPreferenceComparisonCallback:Landroid/support/v7/preference/PreferenceManager$PreferenceComparisonCallback;

    return-object v0
.end method

.method public getPreferenceDataStore()Landroid/support/v7/preference/PreferenceDataStore;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 303
    iget-object v0, p0, Landroid/support/v7/preference/PreferenceManager;->mPreferenceDataStore:Landroid/support/v7/preference/PreferenceDataStore;

    return-object v0
.end method

.method public getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Landroid/support/v7/preference/PreferenceManager;->mPreferenceScreen:Landroid/support/v7/preference/PreferenceScreen;

    return-object v0
.end method

.method public getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 315
    invoke-virtual {p0}, Landroid/support/v7/preference/PreferenceManager;->getPreferenceDataStore()Landroid/support/v7/preference/PreferenceDataStore;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 316
    const/4 v1, 0x0

    .line 334
    :goto_0
    return-object v1

    .line 319
    :cond_0
    iget-object v1, p0, Landroid/support/v7/preference/PreferenceManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-nez v1, :cond_1

    .line 321
    iget v1, p0, Landroid/support/v7/preference/PreferenceManager;->mStorage:I

    packed-switch v1, :pswitch_data_0

    .line 326
    iget-object v0, p0, Landroid/support/v7/preference/PreferenceManager;->mContext:Landroid/content/Context;

    .line 330
    .local v0, "storageContext":Landroid/content/Context;
    :goto_1
    iget-object v1, p0, Landroid/support/v7/preference/PreferenceManager;->mSharedPreferencesName:Ljava/lang/String;

    iget v2, p0, Landroid/support/v7/preference/PreferenceManager;->mSharedPreferencesMode:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/preference/PreferenceManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 334
    .end local v0    # "storageContext":Landroid/content/Context;
    :cond_1
    iget-object v1, p0, Landroid/support/v7/preference/PreferenceManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    goto :goto_0

    .line 323
    :pswitch_0
    iget-object v1, p0, Landroid/support/v7/preference/PreferenceManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v4/content/ContextCompat;->createDeviceProtectedStorageContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    .line 324
    .restart local v0    # "storageContext":Landroid/content/Context;
    goto :goto_1

    .line 321
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public getSharedPreferencesMode()I
    .locals 1

    .prologue
    .line 197
    iget v0, p0, Landroid/support/v7/preference/PreferenceManager;->mSharedPreferencesMode:I

    return v0
.end method

.method public getSharedPreferencesName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Landroid/support/v7/preference/PreferenceManager;->mSharedPreferencesName:Ljava/lang/String;

    return-object v0
.end method

.method public inflateFromResource(Landroid/content/Context;ILandroid/support/v7/preference/PreferenceScreen;)Landroid/support/v7/preference/PreferenceScreen;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I
    .param p3, "rootPreferences"    # Landroid/support/v7/preference/PreferenceScreen;
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 134
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroid/support/v7/preference/PreferenceManager;->setNoCommit(Z)V

    .line 136
    new-instance v0, Landroid/support/v7/preference/PreferenceInflater;

    invoke-direct {v0, p1, p0}, Landroid/support/v7/preference/PreferenceInflater;-><init>(Landroid/content/Context;Landroid/support/v7/preference/PreferenceManager;)V

    .line 137
    .local v0, "inflater":Landroid/support/v7/preference/PreferenceInflater;
    invoke-virtual {v0, p2, p3}, Landroid/support/v7/preference/PreferenceInflater;->inflate(ILandroid/support/v7/preference/PreferenceGroup;)Landroid/support/v7/preference/Preference;

    move-result-object p3

    .end local p3    # "rootPreferences":Landroid/support/v7/preference/PreferenceScreen;
    check-cast p3, Landroid/support/v7/preference/PreferenceScreen;

    .line 138
    .restart local p3    # "rootPreferences":Landroid/support/v7/preference/PreferenceScreen;
    invoke-virtual {p3, p0}, Landroid/support/v7/preference/PreferenceScreen;->onAttachedToHierarchy(Landroid/support/v7/preference/PreferenceManager;)V

    .line 141
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/support/v7/preference/PreferenceManager;->setNoCommit(Z)V

    .line 143
    return-object p3
.end method

.method public isStorageDefault()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 258
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_0

    .line 259
    iget v1, p0, Landroid/support/v7/preference/PreferenceManager;->mStorage:I

    if-nez v1, :cond_1

    .line 261
    :cond_0
    :goto_0
    return v0

    .line 259
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStorageDeviceProtected()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 273
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_1

    .line 274
    iget v2, p0, Landroid/support/v7/preference/PreferenceManager;->mStorage:I

    if-ne v2, v0, :cond_0

    .line 276
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 274
    goto :goto_0

    :cond_1
    move v0, v1

    .line 276
    goto :goto_0
.end method

.method public setOnDisplayPreferenceDialogListener(Landroid/support/v7/preference/PreferenceManager$OnDisplayPreferenceDialogListener;)V
    .locals 0
    .param p1, "onDisplayPreferenceDialogListener"    # Landroid/support/v7/preference/PreferenceManager$OnDisplayPreferenceDialogListener;

    .prologue
    .line 541
    iput-object p1, p0, Landroid/support/v7/preference/PreferenceManager;->mOnDisplayPreferenceDialogListener:Landroid/support/v7/preference/PreferenceManager$OnDisplayPreferenceDialogListener;

    .line 542
    return-void
.end method

.method public setOnNavigateToScreenListener(Landroid/support/v7/preference/PreferenceManager$OnNavigateToScreenListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/support/v7/preference/PreferenceManager$OnNavigateToScreenListener;

    .prologue
    .line 576
    iput-object p1, p0, Landroid/support/v7/preference/PreferenceManager;->mOnNavigateToScreenListener:Landroid/support/v7/preference/PreferenceManager$OnNavigateToScreenListener;

    .line 577
    return-void
.end method

.method public setOnPreferenceTreeClickListener(Landroid/support/v7/preference/PreferenceManager$OnPreferenceTreeClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/support/v7/preference/PreferenceManager$OnPreferenceTreeClickListener;

    .prologue
    .line 562
    iput-object p1, p0, Landroid/support/v7/preference/PreferenceManager;->mOnPreferenceTreeClickListener:Landroid/support/v7/preference/PreferenceManager$OnPreferenceTreeClickListener;

    .line 563
    return-void
.end method

.method public setPreferenceComparisonCallback(Landroid/support/v7/preference/PreferenceManager$PreferenceComparisonCallback;)V
    .locals 0
    .param p1, "preferenceComparisonCallback"    # Landroid/support/v7/preference/PreferenceManager$PreferenceComparisonCallback;

    .prologue
    .line 532
    iput-object p1, p0, Landroid/support/v7/preference/PreferenceManager;->mPreferenceComparisonCallback:Landroid/support/v7/preference/PreferenceManager$PreferenceComparisonCallback;

    .line 533
    return-void
.end method

.method public setPreferenceDataStore(Landroid/support/v7/preference/PreferenceDataStore;)V
    .locals 0
    .param p1, "dataStore"    # Landroid/support/v7/preference/PreferenceDataStore;

    .prologue
    .line 291
    iput-object p1, p0, Landroid/support/v7/preference/PreferenceManager;->mPreferenceDataStore:Landroid/support/v7/preference/PreferenceDataStore;

    .line 292
    return-void
.end method

.method public setPreferences(Landroid/support/v7/preference/PreferenceScreen;)Z
    .locals 1
    .param p1, "preferenceScreen"    # Landroid/support/v7/preference/PreferenceScreen;

    .prologue
    .line 374
    iget-object v0, p0, Landroid/support/v7/preference/PreferenceManager;->mPreferenceScreen:Landroid/support/v7/preference/PreferenceScreen;

    if-eq p1, v0, :cond_1

    .line 375
    iget-object v0, p0, Landroid/support/v7/preference/PreferenceManager;->mPreferenceScreen:Landroid/support/v7/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Landroid/support/v7/preference/PreferenceManager;->mPreferenceScreen:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceScreen;->onDetached()V

    .line 378
    :cond_0
    iput-object p1, p0, Landroid/support/v7/preference/PreferenceManager;->mPreferenceScreen:Landroid/support/v7/preference/PreferenceScreen;

    .line 379
    const/4 v0, 0x1

    .line 382
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSharedPreferencesMode(I)V
    .locals 1
    .param p1, "sharedPreferencesMode"    # I

    .prologue
    .line 208
    iput p1, p0, Landroid/support/v7/preference/PreferenceManager;->mSharedPreferencesMode:I

    .line 209
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/preference/PreferenceManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 210
    return-void
.end method

.method public setSharedPreferencesName(Ljava/lang/String;)V
    .locals 1
    .param p1, "sharedPreferencesName"    # Ljava/lang/String;

    .prologue
    .line 185
    iput-object p1, p0, Landroid/support/v7/preference/PreferenceManager;->mSharedPreferencesName:Ljava/lang/String;

    .line 186
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/preference/PreferenceManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 187
    return-void
.end method

.method public setStorageDefault()V
    .locals 2

    .prologue
    .line 217
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 218
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/preference/PreferenceManager;->mStorage:I

    .line 219
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/preference/PreferenceManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 221
    :cond_0
    return-void
.end method

.method public setStorageDeviceProtected()V
    .locals 2

    .prologue
    .line 244
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 245
    const/4 v0, 0x1

    iput v0, p0, Landroid/support/v7/preference/PreferenceManager;->mStorage:I

    .line 246
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/preference/PreferenceManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 248
    :cond_0
    return-void
.end method

.method shouldCommit()Z
    .locals 1

    .prologue
    .line 507
    iget-boolean v0, p0, Landroid/support/v7/preference/PreferenceManager;->mNoCommit:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showDialog(Landroid/support/v7/preference/Preference;)V
    .locals 1
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 550
    iget-object v0, p0, Landroid/support/v7/preference/PreferenceManager;->mOnDisplayPreferenceDialogListener:Landroid/support/v7/preference/PreferenceManager$OnDisplayPreferenceDialogListener;

    if-eqz v0, :cond_0

    .line 551
    iget-object v0, p0, Landroid/support/v7/preference/PreferenceManager;->mOnDisplayPreferenceDialogListener:Landroid/support/v7/preference/PreferenceManager$OnDisplayPreferenceDialogListener;

    invoke-interface {v0, p1}, Landroid/support/v7/preference/PreferenceManager$OnDisplayPreferenceDialogListener;->onDisplayPreferenceDialog(Landroid/support/v7/preference/Preference;)V

    .line 553
    :cond_0
    return-void
.end method
