.class public final Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$DirectoryPartition;
.super Lcom/android/common/widget/CompositeCursorAdapter$Partition;
.source "BaseEmailAddressAdapterSec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DirectoryPartition"
.end annotation


# instance fields
.field public accountName:Ljava/lang/String;

.field public accountType:Ljava/lang/String;

.field public constraint:Ljava/lang/CharSequence;

.field public directoryId:J

.field public directoryType:Ljava/lang/String;

.field public displayName:Ljava/lang/String;

.field public filter:Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$DirectoryPartitionFilter;

.field public loading:Z

.field public moreResultIsRemained:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 146
    invoke-direct {p0, v0, v0}, Lcom/android/common/widget/CompositeCursorAdapter$Partition;-><init>(ZZ)V

    .line 147
    iput-boolean v0, p0, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$DirectoryPartition;->moreResultIsRemained:Z

    .line 148
    return-void
.end method
