.class Lorg/gnucash/android/ui/settings/AccountPreferencesFragment$2$1;
.super Ljava/lang/Object;
.source "AccountPreferencesFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/gnucash/android/ui/settings/AccountPreferencesFragment$2;->onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/gnucash/android/ui/settings/AccountPreferencesFragment$2;


# direct methods
.method constructor <init>(Lorg/gnucash/android/ui/settings/AccountPreferencesFragment$2;)V
    .locals 0
    .param p1, "this$1"    # Lorg/gnucash/android/ui/settings/AccountPreferencesFragment$2;

    .prologue
    .line 131
    iput-object p1, p0, Lorg/gnucash/android/ui/settings/AccountPreferencesFragment$2$1;->this$1:Lorg/gnucash/android/ui/settings/AccountPreferencesFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 134
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 135
    return-void
.end method
