const previewImageOnFileSelect = () => {
  // we select the photo input
  let files = 0
  const input = document.getElementById('photo-input');
  if (input) {
    // we add a listener to know when a new picture is uploaded
    input.addEventListener('change', () => {
      // we call the displayPreview function (who retrieve the image url and display it)
      if (files <= 4) {
        Array.from(input.files).forEach((image, index) => {
          displayPreview(image, (index + files + 1));
        });
        files += input.files.length;
      };
      if (files > 4 ) {
        const label = document.getElementById('until-five');
        label.classList.add("hidden")
        console.log(input.files)
      };
    });
  }
}

const displayPreview = (input, index) => {
  if (input) {
    const reader = new FileReader();
    reader.onload = (event) => {
      document.getElementById(`photo-preview-${index}`).src = event.currentTarget.result;
    }
    reader.readAsDataURL(input)
    document.getElementById(`photo-preview-${index}`).classList.remove('hidden');
  }
}

export { previewImageOnFileSelect };
