.class public Lcom/tech/freak/wizardpager/ui/GeoFragment;
.super Landroid/support/v4/app/Fragment;
.source "GeoFragment.java"

# interfaces
.implements Lcom/tech/freak/wizardpager/model/SimpleLocationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tech/freak/wizardpager/ui/GeoFragment$LocationUpdatesHandler;
    }
.end annotation


# static fields
.field protected static final ARG_KEY:Ljava/lang/String; = "key"


# instance fields
.field private mCallbacks:Lcom/tech/freak/wizardpager/ui/PageFragmentCallbacks;

.field private mGeocoder:Landroid/location/Geocoder;

.field private mKey:Ljava/lang/String;

.field private mLocationHandler:Lcom/tech/freak/wizardpager/ui/GeoFragment$LocationUpdatesHandler;

.field private mPage:Lcom/tech/freak/wizardpager/model/Page;

.field private progressBar:Landroid/widget/ProgressBar;

.field private textViewLocation:Landroid/widget/TextView;

.field private textViewLocationStatus:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 191
    return-void
.end method

.method static synthetic access$000(Lcom/tech/freak/wizardpager/ui/GeoFragment;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/tech/freak/wizardpager/ui/GeoFragment;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/tech/freak/wizardpager/ui/GeoFragment;->progressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tech/freak/wizardpager/ui/GeoFragment;)Landroid/location/Geocoder;
    .locals 1
    .param p0, "x0"    # Lcom/tech/freak/wizardpager/ui/GeoFragment;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/tech/freak/wizardpager/ui/GeoFragment;->mGeocoder:Landroid/location/Geocoder;

    return-object v0
.end method

.method static synthetic access$200(Lcom/tech/freak/wizardpager/ui/GeoFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/tech/freak/wizardpager/ui/GeoFragment;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/tech/freak/wizardpager/ui/GeoFragment;->textViewLocation:Landroid/widget/TextView;

    return-object v0
.end method

.method public static create(Ljava/lang/String;)Lcom/tech/freak/wizardpager/ui/GeoFragment;
    .locals 3
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 41
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 42
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "key"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    new-instance v1, Lcom/tech/freak/wizardpager/ui/GeoFragment;

    invoke-direct {v1}, Lcom/tech/freak/wizardpager/ui/GeoFragment;-><init>()V

    .line 45
    .local v1, "f":Lcom/tech/freak/wizardpager/ui/GeoFragment;
    invoke-virtual {v1, v0}, Lcom/tech/freak/wizardpager/ui/GeoFragment;->setArguments(Landroid/os/Bundle;)V

    .line 46
    return-object v1
.end method

.method private stopLocationUpdates(Landroid/location/Location;)V
    .locals 4
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/tech/freak/wizardpager/ui/GeoFragment;->mLocationHandler:Lcom/tech/freak/wizardpager/ui/GeoFragment$LocationUpdatesHandler;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/tech/freak/wizardpager/ui/GeoFragment;->mLocationHandler:Lcom/tech/freak/wizardpager/ui/GeoFragment$LocationUpdatesHandler;

    invoke-interface {v0}, Lcom/tech/freak/wizardpager/ui/GeoFragment$LocationUpdatesHandler;->stopLocationUpdates()V

    .line 137
    iget-object v0, p0, Lcom/tech/freak/wizardpager/ui/GeoFragment;->mLocationHandler:Lcom/tech/freak/wizardpager/ui/GeoFragment$LocationUpdatesHandler;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/tech/freak/wizardpager/ui/GeoFragment$LocationUpdatesHandler;->setLocationListener(Lcom/tech/freak/wizardpager/model/SimpleLocationListener;)V

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/tech/freak/wizardpager/ui/GeoFragment;->textViewLocationStatus:Landroid/widget/TextView;

    sget v1, Lcom/tech/freak/wizardpager/R$string;->geo_status_found:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tech/freak/wizardpager/ui/GeoFragment;->updateLocationLabel(Ljava/lang/String;)V

    .line 143
    return-void
.end method

.method private updateLocationLabel(Ljava/lang/String;)V
    .locals 9
    .param p1, "locationString"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 146
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 147
    .local v7, "coordinateStrings":[Ljava/lang/String;
    aget-object v0, v7, v8

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 148
    .local v2, "latitude":D
    const/4 v0, 0x1

    aget-object v0, v7, v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    .line 150
    .local v4, "longitude":D
    new-instance v0, Lcom/tech/freak/wizardpager/ui/GeoFragment$1;

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/tech/freak/wizardpager/ui/GeoFragment$1;-><init>(Lcom/tech/freak/wizardpager/ui/GeoFragment;DDLjava/lang/String;)V

    new-array v1, v8, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/tech/freak/wizardpager/ui/GeoFragment$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 189
    return-void
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 96
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 98
    instance-of v0, p1, Lcom/tech/freak/wizardpager/ui/PageFragmentCallbacks;

    if-nez v0, :cond_0

    .line 99
    new-instance v0, Ljava/lang/ClassCastException;

    const-string v1, "Activity must implement PageFragmentCallbacks"

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move-object v0, p1

    .line 102
    check-cast v0, Lcom/tech/freak/wizardpager/ui/PageFragmentCallbacks;

    iput-object v0, p0, Lcom/tech/freak/wizardpager/ui/GeoFragment;->mCallbacks:Lcom/tech/freak/wizardpager/ui/PageFragmentCallbacks;

    .line 104
    instance-of v0, p1, Lcom/tech/freak/wizardpager/ui/GeoFragment$LocationUpdatesHandler;

    if-nez v0, :cond_1

    .line 105
    new-instance v0, Ljava/lang/ClassCastException;

    const-string v1, "Activity must implement LocationUpdatesHandler"

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_1
    check-cast p1, Lcom/tech/freak/wizardpager/ui/GeoFragment$LocationUpdatesHandler;

    .end local p1    # "activity":Landroid/app/Activity;
    iput-object p1, p0, Lcom/tech/freak/wizardpager/ui/GeoFragment;->mLocationHandler:Lcom/tech/freak/wizardpager/ui/GeoFragment$LocationUpdatesHandler;

    .line 109
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 51
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-virtual {p0}, Lcom/tech/freak/wizardpager/ui/GeoFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 54
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tech/freak/wizardpager/ui/GeoFragment;->mKey:Ljava/lang/String;

    .line 55
    iget-object v1, p0, Lcom/tech/freak/wizardpager/ui/GeoFragment;->mCallbacks:Lcom/tech/freak/wizardpager/ui/PageFragmentCallbacks;

    iget-object v2, p0, Lcom/tech/freak/wizardpager/ui/GeoFragment;->mKey:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/tech/freak/wizardpager/ui/PageFragmentCallbacks;->onGetPage(Ljava/lang/String;)Lcom/tech/freak/wizardpager/model/Page;

    move-result-object v1

    iput-object v1, p0, Lcom/tech/freak/wizardpager/ui/GeoFragment;->mPage:Lcom/tech/freak/wizardpager/model/Page;

    .line 57
    new-instance v1, Landroid/location/Geocoder;

    invoke-virtual {p0}, Lcom/tech/freak/wizardpager/ui/GeoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/tech/freak/wizardpager/ui/GeoFragment;->mGeocoder:Landroid/location/Geocoder;

    .line 58
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 63
    sget v2, Lcom/tech/freak/wizardpager/R$layout;->fragment_page_geo:I

    invoke-virtual {p1, v2, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 65
    .local v1, "rootView":Landroid/view/View;
    const v2, 0x1020016

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/tech/freak/wizardpager/ui/GeoFragment;->mPage:Lcom/tech/freak/wizardpager/model/Page;

    invoke-virtual {v3}, Lcom/tech/freak/wizardpager/model/Page;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    sget v2, Lcom/tech/freak/wizardpager/R$id;->textViewLocationStatus:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/tech/freak/wizardpager/ui/GeoFragment;->textViewLocationStatus:Landroid/widget/TextView;

    .line 70
    sget v2, Lcom/tech/freak/wizardpager/R$id;->textViewLocation:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/tech/freak/wizardpager/ui/GeoFragment;->textViewLocation:Landroid/widget/TextView;

    .line 72
    sget v2, Lcom/tech/freak/wizardpager/R$id;->progressBar:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/tech/freak/wizardpager/ui/GeoFragment;->progressBar:Landroid/widget/ProgressBar;

    .line 74
    iget-object v2, p0, Lcom/tech/freak/wizardpager/ui/GeoFragment;->mPage:Lcom/tech/freak/wizardpager/model/Page;

    invoke-virtual {v2}, Lcom/tech/freak/wizardpager/model/Page;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, "currentData":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 77
    iget-object v2, p0, Lcom/tech/freak/wizardpager/ui/GeoFragment;->textViewLocationStatus:Landroid/widget/TextView;

    sget v3, Lcom/tech/freak/wizardpager/R$string;->geo_status_found:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 78
    iget-object v2, p0, Lcom/tech/freak/wizardpager/ui/GeoFragment;->textViewLocation:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v2, p0, Lcom/tech/freak/wizardpager/ui/GeoFragment;->progressBar:Landroid/widget/ProgressBar;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 87
    :goto_0
    iget-object v2, p0, Lcom/tech/freak/wizardpager/ui/GeoFragment;->mLocationHandler:Lcom/tech/freak/wizardpager/ui/GeoFragment$LocationUpdatesHandler;

    if-eqz v2, :cond_0

    .line 88
    iget-object v2, p0, Lcom/tech/freak/wizardpager/ui/GeoFragment;->mLocationHandler:Lcom/tech/freak/wizardpager/ui/GeoFragment$LocationUpdatesHandler;

    invoke-interface {v2, p0}, Lcom/tech/freak/wizardpager/ui/GeoFragment$LocationUpdatesHandler;->setLocationListener(Lcom/tech/freak/wizardpager/model/SimpleLocationListener;)V

    .line 89
    iget-object v2, p0, Lcom/tech/freak/wizardpager/ui/GeoFragment;->mLocationHandler:Lcom/tech/freak/wizardpager/ui/GeoFragment$LocationUpdatesHandler;

    invoke-interface {v2}, Lcom/tech/freak/wizardpager/ui/GeoFragment$LocationUpdatesHandler;->startLocationUpdates()V

    .line 91
    :cond_0
    return-object v1

    .line 81
    :cond_1
    iget-object v2, p0, Lcom/tech/freak/wizardpager/ui/GeoFragment;->textViewLocationStatus:Landroid/widget/TextView;

    sget v3, Lcom/tech/freak/wizardpager/R$string;->geo_status_searching:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 82
    iget-object v2, p0, Lcom/tech/freak/wizardpager/ui/GeoFragment;->textViewLocation:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v2, p0, Lcom/tech/freak/wizardpager/ui/GeoFragment;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method

.method public onDetach()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 113
    iget-object v0, p0, Lcom/tech/freak/wizardpager/ui/GeoFragment;->mLocationHandler:Lcom/tech/freak/wizardpager/ui/GeoFragment$LocationUpdatesHandler;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/tech/freak/wizardpager/ui/GeoFragment;->mLocationHandler:Lcom/tech/freak/wizardpager/ui/GeoFragment$LocationUpdatesHandler;

    invoke-interface {v0}, Lcom/tech/freak/wizardpager/ui/GeoFragment$LocationUpdatesHandler;->stopLocationUpdates()V

    .line 115
    iget-object v0, p0, Lcom/tech/freak/wizardpager/ui/GeoFragment;->mLocationHandler:Lcom/tech/freak/wizardpager/ui/GeoFragment$LocationUpdatesHandler;

    invoke-interface {v0, v1}, Lcom/tech/freak/wizardpager/ui/GeoFragment$LocationUpdatesHandler;->setLocationListener(Lcom/tech/freak/wizardpager/model/SimpleLocationListener;)V

    .line 117
    :cond_0
    iput-object v1, p0, Lcom/tech/freak/wizardpager/ui/GeoFragment;->mCallbacks:Lcom/tech/freak/wizardpager/ui/PageFragmentCallbacks;

    .line 118
    iput-object v1, p0, Lcom/tech/freak/wizardpager/ui/GeoFragment;->mLocationHandler:Lcom/tech/freak/wizardpager/ui/GeoFragment$LocationUpdatesHandler;

    .line 119
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 120
    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 4
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 124
    if-eqz p1, :cond_0

    .line 125
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, "locationString":Ljava/lang/String;
    iget-object v1, p0, Lcom/tech/freak/wizardpager/ui/GeoFragment;->mPage:Lcom/tech/freak/wizardpager/model/Page;

    invoke-virtual {v1}, Lcom/tech/freak/wizardpager/model/Page;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iget-object v1, p0, Lcom/tech/freak/wizardpager/ui/GeoFragment;->mPage:Lcom/tech/freak/wizardpager/model/Page;

    invoke-virtual {v1}, Lcom/tech/freak/wizardpager/model/Page;->notifyDataChanged()V

    .line 129
    invoke-direct {p0, p1}, Lcom/tech/freak/wizardpager/ui/GeoFragment;->stopLocationUpdates(Landroid/location/Location;)V

    .line 132
    .end local v0    # "locationString":Ljava/lang/String;
    :cond_0
    return-void
.end method
