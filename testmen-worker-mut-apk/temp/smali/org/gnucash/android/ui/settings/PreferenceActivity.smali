.class public Lorg/gnucash/android/ui/settings/PreferenceActivity;
.super Lorg/gnucash/android/ui/passcode/PasscodeLockActivity;
.source "PreferenceActivity.java"

# interfaces
.implements Landroid/support/v7/preference/PreferenceFragmentCompat$OnPreferenceStartFragmentCallback;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final ACTION_MANAGE_BOOKS:Ljava/lang/String; = "org.gnucash.android.intent.action.MANAGE_BOOKS"


# instance fields
.field mSlidingPaneLayout:Landroid/support/v4/widget/SlidingPaneLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0901c5
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-class v0, Lorg/gnucash/android/ui/settings/PreferenceActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/gnucash/android/ui/settings/PreferenceActivity;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lorg/gnucash/android/ui/passcode/PasscodeLockActivity;-><init>()V

    return-void
.end method

.method public static getActiveBookSharedPreferences()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 149
    invoke-static {}, Lorg/gnucash/android/db/adapter/BooksDbAdapter;->getInstance()Lorg/gnucash/android/db/adapter/BooksDbAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/gnucash/android/db/adapter/BooksDbAdapter;->getActiveBookUID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/gnucash/android/ui/settings/PreferenceActivity;->getBookSharedPreferences(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static getBookSharedPreferences(Ljava/lang/String;)Landroid/content/SharedPreferences;
    .locals 2
    .param p0, "bookUID"    # Ljava/lang/String;

    .prologue
    .line 158
    invoke-static {}, Lorg/gnucash/android/app/GnuCashApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 159
    .local v0, "context":Landroid/content/Context;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    return-object v1
.end method

.method private loadFragment(Landroid/support/v4/app/Fragment;)V
    .locals 3
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 118
    invoke-virtual {p0}, Lorg/gnucash/android/ui/settings/PreferenceActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 120
    .local v0, "fragmentManager":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 122
    .local v1, "fragmentTransaction":Landroid/support/v4/app/FragmentTransaction;
    const v2, 0x7f0900c8

    invoke-virtual {v1, v2, p1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 123
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 124
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lorg/gnucash/android/ui/settings/PreferenceActivity;->mSlidingPaneLayout:Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-virtual {v0}, Landroid/support/v4/widget/SlidingPaneLayout;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    invoke-super {p0}, Lorg/gnucash/android/ui/passcode/PasscodeLockActivity;->onBackPressed()V

    .line 168
    :goto_0
    return-void

    .line 167
    :cond_0
    iget-object v0, p0, Lorg/gnucash/android/ui/settings/PreferenceActivity;->mSlidingPaneLayout:Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-virtual {v0}, Landroid/support/v4/widget/SlidingPaneLayout;->openPane()Z

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x1

    .line 56
    invoke-super {p0, p1}, Lorg/gnucash/android/ui/passcode/PasscodeLockActivity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    const v2, 0x7f0b0024

    invoke-virtual {p0, v2}, Lorg/gnucash/android/ui/settings/PreferenceActivity;->setContentView(I)V

    .line 59
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 61
    iget-object v2, p0, Lorg/gnucash/android/ui/settings/PreferenceActivity;->mSlidingPaneLayout:Landroid/support/v4/widget/SlidingPaneLayout;

    new-instance v3, Lorg/gnucash/android/ui/settings/PreferenceActivity$1;

    invoke-direct {v3, p0}, Lorg/gnucash/android/ui/settings/PreferenceActivity$1;-><init>(Lorg/gnucash/android/ui/settings/PreferenceActivity;)V

    invoke-virtual {v2, v3}, Landroid/support/v4/widget/SlidingPaneLayout;->setPanelSlideListener(Landroid/support/v4/widget/SlidingPaneLayout$PanelSlideListener;)V

    .line 80
    invoke-virtual {p0}, Lorg/gnucash/android/ui/settings/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "action":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, "org.gnucash.android.intent.action.MANAGE_BOOKS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 82
    new-instance v2, Lorg/gnucash/android/ui/settings/BookManagerFragment;

    invoke-direct {v2}, Lorg/gnucash/android/ui/settings/BookManagerFragment;-><init>()V

    invoke-direct {p0, v2}, Lorg/gnucash/android/ui/settings/PreferenceActivity;->loadFragment(Landroid/support/v4/app/Fragment;)V

    .line 83
    iget-object v2, p0, Lorg/gnucash/android/ui/settings/PreferenceActivity;->mSlidingPaneLayout:Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-virtual {v2}, Landroid/support/v4/widget/SlidingPaneLayout;->closePane()Z

    .line 89
    :goto_0
    invoke-virtual {p0}, Lorg/gnucash/android/ui/settings/PreferenceActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    .line 90
    .local v1, "actionBar":Landroid/support/v7/app/ActionBar;
    sget-boolean v2, Lorg/gnucash/android/ui/settings/PreferenceActivity;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    if-nez v1, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 85
    .end local v1    # "actionBar":Landroid/support/v7/app/ActionBar;
    :cond_0
    iget-object v2, p0, Lorg/gnucash/android/ui/settings/PreferenceActivity;->mSlidingPaneLayout:Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-virtual {v2}, Landroid/support/v4/widget/SlidingPaneLayout;->openPane()Z

    .line 86
    new-instance v2, Lorg/gnucash/android/ui/settings/GeneralPreferenceFragment;

    invoke-direct {v2}, Lorg/gnucash/android/ui/settings/GeneralPreferenceFragment;-><init>()V

    invoke-direct {p0, v2}, Lorg/gnucash/android/ui/settings/PreferenceActivity;->loadFragment(Landroid/support/v4/app/Fragment;)V

    goto :goto_0

    .line 91
    .restart local v1    # "actionBar":Landroid/support/v7/app/ActionBar;
    :cond_1
    const v2, 0x7f0f01e1

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    .line 92
    invoke-virtual {v1, v4}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 93
    invoke-virtual {v1, v4}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 94
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 128
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 139
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 130
    :pswitch_0
    invoke-virtual {p0}, Lorg/gnucash/android/ui/settings/PreferenceActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 131
    .local v0, "fm":Landroid/app/FragmentManager;
    invoke-virtual {v0}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 132
    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStack()V

    .line 136
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 134
    :cond_0
    invoke-virtual {p0}, Lorg/gnucash/android/ui/settings/PreferenceActivity;->finish()V

    goto :goto_1

    .line 128
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceStartFragment(Landroid/support/v7/preference/PreferenceFragmentCompat;Landroid/support/v7/preference/Preference;)Z
    .locals 7
    .param p1, "caller"    # Landroid/support/v7/preference/PreferenceFragmentCompat;
    .param p2, "pref"    # Landroid/support/v7/preference/Preference;

    .prologue
    const/4 v6, 0x0

    .line 98
    invoke-virtual {p2}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 99
    .local v4, "key":Ljava/lang/String;
    const/4 v3, 0x0

    .line 101
    .local v3, "fragment":Landroid/support/v4/app/Fragment;
    :try_start_0
    invoke-virtual {p2}, Landroid/support/v7/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 102
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Landroid/support/v4/app/Fragment;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    .line 108
    invoke-direct {p0, v3}, Lorg/gnucash/android/ui/settings/PreferenceActivity;->loadFragment(Landroid/support/v4/app/Fragment;)V

    .line 109
    iget-object v5, p0, Lorg/gnucash/android/ui/settings/PreferenceActivity;->mSlidingPaneLayout:Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-virtual {v5}, Landroid/support/v4/widget/SlidingPaneLayout;->closePane()Z

    .line 110
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return v6

    .line 103
    :catch_0
    move-exception v2

    .line 104
    .local v2, "e":Ljava/lang/ReflectiveOperationException;
    :goto_1
    invoke-virtual {v2}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    goto :goto_0

    .line 103
    .end local v2    # "e":Ljava/lang/ReflectiveOperationException;
    :catch_1
    move-exception v2

    goto :goto_1

    :catch_2
    move-exception v2

    goto :goto_1
.end method
