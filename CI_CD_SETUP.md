# CI/CD Setup Guide for Flutter Portfolio

This guide explains how to set up automated deployment for your Flutter portfolio using GitHub Actions.

## 🚀 Quick Start

1. **Push the workflow files** to your repository
2. **Enable GitHub Pages** in repository settings
3. **Make a commit** to trigger the first deployment

## 📁 Workflow Files

### `.github/workflows/deploy.yml`
- Simple deployment workflow
- Builds and deploys on every push to master/main
- Includes basic testing and analysis

### `.github/workflows/ci-cd.yml`
- Comprehensive CI/CD pipeline
- Separate jobs for testing, building, and deploying
- Includes code coverage and artifact management
- More detailed deployment information

## ⚙️ GitHub Repository Settings

### 1. Enable GitHub Pages

1. Go to your repository on GitHub
2. Navigate to **Settings** → **Pages**
3. Under **Source**, select **GitHub Actions**
4. This allows the workflow to deploy to GitHub Pages

### 2. Repository Permissions

The workflow uses `${{ secrets.GITHUB_TOKEN }}` which is automatically available. No additional setup required.

### 3. Branch Protection (Optional)

For better security, consider setting up branch protection:

1. Go to **Settings** → **Branches**
2. Add rule for `master` or `main` branch
3. Enable:
   - ✅ Require a pull request before merging
   - ✅ Require status checks to pass before merging
   - ✅ Require branches to be up to date

## 🔧 Workflow Features

### Deploy Workflow (`deploy.yml`)
- ✅ Triggers on push to master/main
- ✅ Installs Flutter dependencies
- ✅ Runs code analysis
- ✅ Executes tests
- ✅ Builds web app
- ✅ Deploys to GitHub Pages

### CI/CD Pipeline (`ci-cd.yml`)
- ✅ Separate test and build jobs
- ✅ Code formatting verification
- ✅ Test coverage reporting
- ✅ Artifact management
- ✅ Detailed deployment messages
- ✅ Environment protection

## 📊 Deployment Information

After deployment, your portfolio will be available at:
```
https://[username].github.io/[repository-name]
```

### Example URLs:
- `https://roshandroids.github.io/portfolio`
- `https://yourusername.github.io/your-repo-name`

## 🛠️ Local Testing

Before pushing, test the build locally:

```bash
# Install dependencies
flutter pub get

# Run tests
flutter test

# Analyze code
flutter analyze

# Build web app
flutter build web --release

# Serve locally (optional)
flutter run -d chrome
```

## 🔍 Troubleshooting

### Common Issues:

1. **Build fails**: Check Flutter version compatibility
2. **Deployment fails**: Verify GitHub Pages is enabled
3. **Tests fail**: Run `flutter test` locally first
4. **Analysis errors**: Run `flutter analyze` locally

### Debug Commands:

```bash
# Check Flutter version
flutter --version

# Clean and rebuild
flutter clean
flutter pub get
flutter build web

# Check for issues
flutter doctor
```

## 📈 Monitoring

- **Workflow Status**: Check the Actions tab in your repository
- **Deployment Status**: Monitor the deployment job in the workflow
- **Build Artifacts**: Download build files from the Actions tab

## 🔄 Workflow Triggers

The workflows trigger on:
- ✅ Push to `master` branch
- ✅ Push to `main` branch  
- ✅ Push to `dev` branch (CI/CD pipeline only)
- ✅ Pull requests to `master`/`main`

## 🎯 Next Steps

1. **Custom Domain** (Optional): Add a custom domain in GitHub Pages settings
2. **Analytics**: Add Google Analytics or other tracking
3. **SEO**: Optimize meta tags and descriptions
4. **Performance**: Monitor and optimize load times

## 📝 Notes

- The workflow uses Flutter 3.24.5 (latest stable)
- Web renderer is set to HTML for better compatibility
- Build artifacts are retained for 30 days
- Deployment uses force-orphan to keep the gh-pages branch clean 